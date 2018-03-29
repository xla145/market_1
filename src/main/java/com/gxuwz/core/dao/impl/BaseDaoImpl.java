package com.gxuwz.core.dao.impl;

import com.gxuwz.core.dao.BaseDao;
import com.gxuwz.core.pagination.Result;
import org.hibernate.*;
import org.hibernate.criterion.Order;
import org.hibernate.engine.SessionFactoryImplementor;
import org.hibernate.hql.ast.QueryTranslatorImpl;
import org.hibernate.type.Type;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

/**
 * 
 * dao 公共方法
 *
 * @version $ BaseDaoImpl.java 2015-7-13 10:50:44
 */
@Repository("baseDao")
public class BaseDaoImpl<T> implements BaseDao<T> {

    @Autowired
    HibernateTemplate hibernateTemplate;

    // 日志
    protected final Logger logger = LoggerFactory.getLogger(getClass());

    /**
     * 添加方法 参数对象
     * @param entity
     * @return
     */
    @Override
    public T save(T entity) {
        try {
            hibernateTemplate.saveOrUpdate(entity);
        } catch (RuntimeException e) {
            logger.error("保存失败（"+getClass().getName()+"）,原因是【", e.getMessage()+"】");
            throw e;
        }
        return entity;
    }


    /**
     * 数据合并 主键存在则更新 不存在则新增
     * @param entity
     * @return
     */
    @Override
    public T merge(T entity) {
        hibernateTemplate.merge(entity);
        return entity;
    }

    /**
     * 数据更新
     * @param entity
     */
    @Override
    public void update(T entity) {
        hibernateTemplate.update(entity);

    }


    /**
     * 获取对象数据
     * @param clazz
     * @param id
     * @return
     */
    @Override
    public T get(Class<T> clazz, Serializable id) {
        return hibernateTemplate.get(clazz, id);
    }


    /**
     * 删除对象数据
     * @param clazz
     * @param id
     */
    @Override
    public void remove(Class<T> clazz, Serializable id) {
        hibernateTemplate.delete(get(clazz, id));
    }

    /**
     * 删除对象数据
     * @param entity
     */
    @Override
    public void remove(T entity) {
        hibernateTemplate.delete(entity);
    }


    /**
     * 会把指定的缓冲对象进行清除
     * @param entity
     */
    @Override
    public void evict(T entity) {
        hibernateTemplate.evict(entity);

    }

    /**
     * 获取所有列表数据
     * @param clazz
     * @return
     */
    @Override
    public List<T> getAll(final Class<T> clazz) {
        Object result = hibernateTemplate.execute(
                new HibernateCallback<Object>() {
                    public Object doInHibernate(Session session)
                            throws HibernateException, SQLException {
                        String hql = "from " + clazz.getName();
                        Query query = session.createQuery(hql);
                        return query.list();
                    }
                });
        return (List) result;
    }

    /**
     * 获取列表数据
     * @param hql
     * @param params
     * @return
     */
    @Override
    public List<T> findByHql(String hql, Object... params) {
        return hibernateTemplate.find(hql, params);
    }


    /**
     * 获取对象数据
     * @param hql
     * @return
     */
    @Override
    public T getByHql(final String hql,Object... params) {
        return (T) hibernateTemplate.execute(
                new HibernateCallback<T>() {
                    public T doInHibernate(Session session)
                            throws HibernateException, SQLException {
                        Query query = session.createQuery(hql);

                        return (T) query.uniqueResult();
                    }
                });
    }

    /**
     * 分页获取列表数据
     * @param hql
     * @param values
     * @param start
     * @param limit
     * @return
     */
    @Override
    public List<T> findByHql(final String hql, final Object[] values,
                             final int start, final int limit) {
        return (List) hibernateTemplate.execute(
                new HibernateCallback<List>() {
                    public List doInHibernate(Session session)
                            throws HibernateException, SQLException {
                        Query query = session.createQuery(hql);
                        query.setFirstResult(start).setMaxResults(limit);
                        if (values != null) {
                            for (int i = 0; i < values.length; i++) {
                                query.setParameter(i, values[i]);
                            }
                        }
                        return query.list();
                    }
                });
    }

    /**
     * 所有缓存flush入数据库
     */
    @Override
    public void flush() {
        hibernateTemplate.flush();
    }

    /**
     * 更新数据
     * @param hql
     * @param values
     * @return
     */
    @Override
    public Long update(final String hql, final Object... values) {

        int c = hibernateTemplate.executeWithNativeSession(
                new HibernateCallback<Integer>() {
                    public Integer doInHibernate(Session session)
                            throws HibernateException {
                        Query queryObject = session.createQuery(hql);

                        if (values != null) {
                            for (int i = 0; i < values.length; i++) {
                                queryObject.setParameter(i, values[i]);
                            }
                        }
                        return queryObject.executeUpdate();
                    }
                });
        return new Long(c);
    }


    /**
     * 更新数据
     * @param queryString
     * @return
     */
    @Override
    public int update(String queryString) {
        return hibernateTemplate.bulkUpdate(queryString);
    }

    /**
     * 查询方法
     * @param hql
     * @param values
     * @param types
     * @param start
     * @param limit
     * @return
     */
    public Result<T> find(final String hql, final Object[] values, final Type[] types, final int start, final int limit) {
        try {
            Result result = new Result(start, limit);
            if (start != -1 && limit != -1) {
                result.setTotal(getTotalItems(hql, values).intValue());
            }
            HibernateTemplate ht = hibernateTemplate;
            List data = ht.executeFind(new HibernateCallback<List>() {
                public List doInHibernate(Session session)
                        throws HibernateException {
                    Query queryObject = session.createQuery(hql);
                    setParameters(queryObject, values, types);
                    if (start >= 0) {
                        queryObject.setFirstResult(start);
                    }
                    if (limit >= 0) {
                        queryObject.setMaxResults(limit);
                    }
                    return queryObject.list();
                }
            });
            result.setData(data);
            if (start == -1 && limit == -1) {
                result.setTotal(data.size());
            }
            return result;
        } catch (RuntimeException e) {
            throw e;
        }
    }


    /**
     * 批量更新
     * @param hql
     * @param values
     * @param types
     * @return
     * @throws DataAccessException
     */
    protected int bulkUpdate(final String hql, final Object[] values,
                             final Type[] types) throws DataAccessException {
        Integer updateCount = (Integer) hibernateTemplate.execute(
                new HibernateCallback<Integer>() {
                    public Integer doInHibernate(Session session)
                            throws HibernateException {
                        Query queryObject = session.createQuery(hql);
                        setParameters(queryObject, values, types);
                        return new Integer(queryObject.executeUpdate());
                    }
                });
        return updateCount.intValue();
    }

    /**
     * SQL
     *
     * @param queryObject
     * @param values
     * @param types
     */
    static void setParameters(Query queryObject, Object[] values, Type[] types) {
        if (values != null) {
            if (types != null) {
                for (int i = 0; i < values.length; i++) {
                    queryObject.setParameter(i, values[i], types[i]);
                }
            } else {
                for (int i = 0; i < values.length; i++) {
                    queryObject.setParameter(i, values[i]);
                }
            }
        }
    }

    /**
     * @param hql
     * @param entityAlias
     * @param entityClass
     * @param values
     * @param types
     * @return
     */
    protected List<T> findBySQL(final String hql, final String entityAlias,
                             final Class<T> entityClass, final Object[] values,
                             final Type[] types) {
        return findBySQL(hql, entityAlias, entityClass, values, types, -1, -1)
                .getData();
    }


    protected Result<T> findBySQL(final String hql, final String entityAlias,
                               final Class<T> entityClass, final Object[] values,
                               final Type[] types, final int start, final int limit) {
        return findBySQL(hql, entityAlias, entityClass, values, types, start,
                limit, true,null);
    }


    /**
     *
     * @param sql
     * @param entityAlias 对象别名
     * @param entityClass
     * @param values 参数
     * @param types 参数类型
     * @param start 起始条数
     * @param limit
     * @param readOnly
     * @return
     */
    protected Result<T> findBySQL(final String sql, final String entityAlias,
                               final Class entityClass, final Object[] values, final Type[] types,
                               final int start, final int limit, boolean readOnly,Order order) {

        Result<T> result = new Result<T>(start, limit);

        if (start != -1 && limit != -1) {
            Number count = getTotalItems(sql, values);
            result.setTotal(count.intValue());
        }

        List<T> data = hibernateTemplate.executeFind(new HibernateCallback<List>() {
            public List doInHibernate(Session session)
                    throws HibernateException {
                SQLQuery query = session.createSQLQuery(sql);
                Criteria crit = session.createCriteria(getClass());
                crit.addOrder(order);
                query.addEntity(entityAlias, entityClass);
                query.setParameters(values, types);

                if (start >= 0) {
                    query.setFirstResult(start);
                }

                if (limit >= 0) {
                    query.setMaxResults(limit + 1);
                }

                return query.list();
            }
        });

        result.setData(data);

        if (start == -1 && limit == -1) {
            result.setTotal(data.size());
        }

        return result;
    }

    /**
     * @param hql
     * @param values
     * @return
     */
    public Long getTotalItems(String hql, final Object[] values) {
        int orderByIndex = hql.toUpperCase().indexOf(" ORDER BY ");

        if (orderByIndex != -1) {
            hql = hql.substring(0, orderByIndex);
        }

        QueryTranslatorImpl queryTranslator = new QueryTranslatorImpl(
                hql, hql, Collections.EMPTY_MAP,
                (SessionFactoryImplementor) hibernateTemplate.getSessionFactory());
        queryTranslator.compile(Collections.EMPTY_MAP, false);

        final String sql = "select count(*) from ("
                + queryTranslator.getSQLString() + ") tmp_count_t";

        Object reVal = hibernateTemplate.execute(
                new HibernateCallback<Object>() {
                    public Object doInHibernate(Session session)
                            throws HibernateException, SQLException {
                        SQLQuery query = session.createSQLQuery(sql);
                        if (values != null) {
                            for (int i = 0; i < values.length; i++) {
                                query.setParameter(i, values[i]);
                            }
                        }
                        return query.uniqueResult();
                    }
                });
        return new Long(reVal.toString());
    }
}
