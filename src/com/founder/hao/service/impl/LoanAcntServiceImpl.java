package com.founder.hao.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.founder.hao.dao.ILoanBaseDao;
import com.founder.hao.entity.BaseListPage;
import com.founder.hao.service.IBaseService;

@Service("loanAcntService")
public class LoanAcntServiceImpl implements IBaseService{
	private final static Logger log = Logger.getLogger(LoanAcntServiceImpl.class);

	@Resource
	private ILoanBaseDao loanDao;
	
	@Override
	public BaseListPage<?> getByPage(BaseListPage<?> page) {
		log.debug("进入LoanServiceImpl-getByPage函数");
		//TODO: 此处的page为参数，是否应该新建一个
		page.setBeanList(loanDao.queryListByPage(page));
		page.setCount(loanDao.queryCountByPage(page));
		return page;
	}

}
