package com.founder.hao.service;

import com.founder.hao.entity.BaseListPage;
import com.founder.hao.entity.DepositBaseAccount;


public interface IDepositAcntService {
	
	public BaseListPage<DepositBaseAccount> getByPage(BaseListPage<DepositBaseAccount> page);
	public BaseListPage<?> getCustDataByPage(BaseListPage<?> page);
}
