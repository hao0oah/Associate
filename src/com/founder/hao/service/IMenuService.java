package com.founder.hao.service;

import java.util.List;

import com.founder.hao.entity.Menu;
import com.founder.hao.entity.User;

public interface IMenuService {

	public abstract List<Menu> getUserMenu(User user);

}