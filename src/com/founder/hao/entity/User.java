package com.founder.hao.entity;

/**
 * 用户信息表(sys_user)
 * 登录时使用用户名和密码，考虑使用混合登录，即可以同时使用邮箱和手机号登录
 * @author Hao
 * @date 2016/05/09
 */
public class User {
	private Integer userId;		//用户ID
	private Integer departId;	//机构ID
	private String username;	//用户名
	private String password; 	//密码
	private String name;		//姓名
	private String email;		//邮箱
	private String phone;		//手机号
	private String qq;			//QQ号码
	private Integer status;		//用户状态
	
	public Integer getDepartId() {
		return departId;
	}
	public void setDepartId(Integer departId) {
		this.departId = departId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username
				+ ", status=" + status + "]";
	}

}
