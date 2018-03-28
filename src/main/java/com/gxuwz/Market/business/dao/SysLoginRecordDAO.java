package com.gxuwz.Market.business.dao;

import com.gxuwz.Market.business.entity.SysLoginRecord;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * A data access object (DAO) providing persistence and search support for
 * SysLoginRecord entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 */
@Repository("sysLoginRecordDAO")
public class SysLoginRecordDAO extends BaseDaoImpl<SysLoginRecord> {
	private static final Logger log = LoggerFactory
			.getLogger(SysLoginRecordDAO.class);

	protected void initDao() {
		// do nothing
	}

//	public void save(SysLoginRecord transientInstance) {
//		log.debug("saving SysLoginRecord instance");
//		try {
//			getHibernateTemplate().save(transientInstance);
//			log.debug("save successful");
//		} catch (RuntimeException re) {
//			log.error("save failed", re);
//			throw re;
//		}
//	}

	public void delete(SysLoginRecord persistentInstance) {
		log.debug("deleting SysLoginRecord instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SysLoginRecord findById(String id) {
		log.debug("getting SysLoginRecord instance with id: " + id);
		try {
			SysLoginRecord instance = (SysLoginRecord) getHibernateTemplate()
					.get("com.gxuwz.Market.business.dao.SysLoginRecord",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(SysLoginRecord instance) {
		log.debug("finding SysLoginRecord instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding SysLoginRecord instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from SysLoginRecord as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all SysLoginRecord instances");
		try {
			String queryString = "from SysLoginRecord";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public SysLoginRecord merge(SysLoginRecord detachedInstance) {
		log.debug("merging SysLoginRecord instance");
		try {
			SysLoginRecord result = (SysLoginRecord) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(SysLoginRecord instance) {
		log.debug("attaching dirty SysLoginRecord instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SysLoginRecord instance) {
		log.debug("attaching clean SysLoginRecord instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static SysLoginRecordDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (SysLoginRecordDAO) ctx.getBean("SysLoginRecordDAO");
	}
	/**
	 * 查询所有登陆记录
	 * @param page
	 * @param size
	 * @return
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	@SuppressWarnings("unchecked")
	public Result<SysLoginRecord> find(int page, int size, String logtype) {
		String queryString="from SysLoginRecord where 1=1";
		//根据日志类型来获取日志信息列表,1表示登录日志，2表示导出二维码日志
		if("1".equals(logtype))
		{
			queryString = queryString + " and operate_type = 1";
		}
		
		if("2".equals(logtype))
		{
			queryString = queryString + " and operate_type = 2";
		}
		
		int start=(page-1)*size;
		int limit =size;
		return (Result<SysLoginRecord>)super.find(queryString, null, null, start, limit);
	}
}