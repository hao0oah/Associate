package com.founder.hao.service;

import com.founder.hao.data.DepositAccount;
import com.founder.hao.entity.BaseListPage;


public interface IDepositService {
	
	public BaseListPage<DepositAccount> getByPage(BaseListPage<DepositAccount> page);
	public BaseListPage<?> getCustDataByPage(BaseListPage<?> page);
}
