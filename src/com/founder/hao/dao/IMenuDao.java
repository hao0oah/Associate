package com.founder.hao.dao;

import java.util.List;

import com.founder.hao.entity.Menu;

public interface IMenuDao{

	public void insertMenu(Menu menu);
	
	public void updateMenu(Menu menu);
	
	public void deleteMenu(Menu menu);
	
	public List<Menu> getMenuByUserId(Integer userId);
}
