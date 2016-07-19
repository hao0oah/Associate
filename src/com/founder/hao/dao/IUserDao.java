package com.founder.hao.dao;

import com.founder.hao.entity.User;

public interface IUserDao extends IBaseDao{
	/**
	 * 将用户插入数据库
	 */
	public void insertUser(User user);
	/**
	 * 根据ID更新用户
	 */
	public void updateUser(User user);
	/**
	 * 根据ID删除用户
	 */
	public void deleteUser(User user);
	/**
	 * 根据ID查询用户信息
	 */
	public User getUserById(int userId);
	/**
	 * 根据用户名查找用户是否存在，用于登录、注册检测
	 */
	public User getUserByUserName(String username);

}
