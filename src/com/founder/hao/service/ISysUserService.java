package com.founder.hao.service;

import javax.servlet.http.HttpServletRequest;

import com.founder.hao.entity.LoginRecord;
import com.founder.hao.entity.User;

public interface ISysUserService extends IBaseService{

	/**
	 * 用户登录，根据用户名查询数据库
	 */
	public abstract User login(String username);

	/**
	 * 用户注册
	 */
	public abstract void register();

	/**
	 * 检查验证码是否正确
	 * @return true 正确，false 错误
	 */
	public abstract boolean checkVolidCode(HttpServletRequest req, String code);

	/**
	 * 插入登录记录
	 */
	public abstract void addLoginRecord(LoginRecord record);

	/**
	 * 获取在2分钟内输入密码错误次数，超过3次，5分钟内不让登陆
	 * @return 大于等于3次不可登录，小于3次可登录
	 */
	public abstract int getPwdFaltCounts(int userid);

	/**
	 * 登录后获取用户的权限及菜单
	 */
	public abstract void getMenu(int userid);

	/**
	 * 获取用户登录后的其他信息
	 */
	public abstract void getUserMeta();
	
	public abstract void updateUser(User user);

}