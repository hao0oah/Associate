package com.founder.hao.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.founder.hao.dao.ICustBaseDao;
import com.founder.hao.entity.BaseListPage;
import com.founder.hao.service.IBaseService;

@Service("custBaseService")
public class CustBaseServiceImpl implements IBaseService{
	private final static Logger log = Logger.getLogger(CustBaseServiceImpl.class);

	@Resource
	private ICustBaseDao custBaseDao;
	
	public BaseListPage<?> getByPage(BaseListPage<?> page){
		log.debug("进入DepositServiceImpl-getCustDataByPage函数");
		page.setBeanList( custBaseDao.queryListByPage(page));
		page.setCount(custBaseDao.queryCountByPage(page));
		return page;
	}

}
