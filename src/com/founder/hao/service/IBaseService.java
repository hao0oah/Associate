package com.founder.hao.service;

import com.founder.hao.entity.BaseListPage;

public interface IBaseService {
	public BaseListPage<?> getByPage(BaseListPage<?> page);
}
