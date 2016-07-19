package com.founder.hao.dao;

import com.founder.hao.entity.LoginRecord;

public interface ILoginRecordDao {
	/**
	 * 插入当前登录时间和相关信息
	 */
	public void insertLoginRecord(LoginRecord record);
	/**
	 * 获取用户注册时间，即第一次的登录记录（需要在用户注册时，进行记录）
	 */
	public LoginRecord getRegisterRecord(int userid);
	/**
	 * 获取最后一次正确的登录时间、地点、IP等信息
	 */
	public LoginRecord getLastLoginRecord(int userid);
	/**
	 * 获取在指定时间内的密码输入错误的次数
	 */
	public int getFaltTimes(int userid);

}
