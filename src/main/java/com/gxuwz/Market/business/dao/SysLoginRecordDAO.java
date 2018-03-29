package com.gxuwz.Market.business.dao;

import com.alibaba.fastjson.JSON;
import com.gxuwz.Market.business.entity.SysLoginRecord;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;
import org.springframework.stereotype.Repository;

/**
 *
 *登录记录管理
 */
@Repository("sysLoginRecordDAO")
public class SysLoginRecordDAO extends BaseDaoImpl<SysLoginRecord> {


	/**
	 * 删除记录信息
	 * @param sysLoginRecord
	 */
	public void delete(SysLoginRecord sysLoginRecord) {
		super.logger.info("删除对象信息【"+ JSON.toJSON(sysLoginRecord));
		try {
			super.remove(sysLoginRecord);
		} catch (Exception re) {
			super.logger.error("删除失败,原因是【", re.getMessage());
			throw re;
		}
	}

	/**
	 * 查询记录
	 * @param id
	 * @return
	 */
	public SysLoginRecord findSysLoginRecordById(String id) {
		try {
			return super.get(SysLoginRecord.class,id);
		} catch (Exception re) {
			super.logger.error("get failed", re);
			throw re;
		}
	}



	public SysLoginRecord merge(SysLoginRecord detachedInstance) {

		try {
			SysLoginRecord result = (SysLoginRecord) this
					.merge(detachedInstance);
			return result;
		} catch (Exception re) {
			super.logger.error("merge failed", re);
			throw re;
		}
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
		if("1".equals(logtype)) {
			queryString = queryString + " and operate_type = 1";
		}
		
		if("2".equals(logtype)) {
			queryString = queryString + " and operate_type = 2";
		}
		int start=(page-1)*size;
		int limit =size;
		return super.find(queryString, null, null, start, limit);
	}
}