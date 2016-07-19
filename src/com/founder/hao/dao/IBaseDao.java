package com.founder.hao.dao;

import java.util.List;

import com.founder.hao.entity.BaseListPage;

public interface IBaseDao {
	public void add(Object cba);
	public void update(Object cba);
	public void delete(Object cba);
	
	public List<?> queryListByPage(BaseListPage<?> page);
	public int queryCountByPage(BaseListPage<?> page);
}
