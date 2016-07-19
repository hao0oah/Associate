package com.founder.hao.entity;

import java.sql.Date;

/**
 * 用户登录记录表(sys_login_record)
 * 可以获取最后一次登录IP、时间和设备
 * 可以获取第一次的时间作为注册时间
 * @author Hao
 * @date 2016/05/10
 */
public class LoginRecord {
	private Integer recordId;	//记录ID 
	private Integer loginUserId;//登录用户ID
	private Date loginTime;		//登录时间
	private String loginIP;		//登录ip地址
	private String loginDevice;	//登录设备
	private Integer loginCode;	//登录码，0-登录成功，1-密码错误，登录失败
	private Integer loginStatus;//登录状态，0-登录，1-登出
	
	public Integer getRecordId() {
		return recordId;
	}
	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}
	public Integer getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId(Integer loginUserId) {
		this.loginUserId = loginUserId;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	public String getLoginDevice() {
		return loginDevice;
	}
	public void setLoginDevice(String loginDevice) {
		this.loginDevice = loginDevice;
	}
	public Integer getLoginCode() {
		return loginCode;
	}
	public void setLoginCode(Integer loginCode) {
		this.loginCode = loginCode;
	}
	public Integer getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(Integer loginStatus) {
		this.loginStatus = loginStatus;
	}
	
}
