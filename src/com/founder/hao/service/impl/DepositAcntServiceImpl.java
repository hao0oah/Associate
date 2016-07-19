package com.founder.hao.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.founder.hao.dao.IDepositBaseDao;
import com.founder.hao.entity.BaseListPage;
import com.founder.hao.service.IBaseService;

@Service("depositAcntService")
public class DepositAcntServiceImpl implements IBaseService{
	private final static Logger log = Logger.getLogger(DepositAcntServiceImpl.class);

	@Resource
	private IDepositBaseDao depositDao;
	
	@Override
	public BaseListPage<?> getByPage(BaseListPage<?> page) {
		log.debug("进入DepositServiceImpl-getByPage函数");
		//TODO: 此处的page为参数，是否应该新建一个
		page.setBeanList(depositDao.queryListByPage(page));
		page.setCount(depositDao.queryCountByPage(page));
		return page;
	}
}
