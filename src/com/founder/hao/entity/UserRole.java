package com.founder.hao.entity;

/**
 * 用户和角色关联表(sys_user_role)
 * @author Hao
 * @date 2016/05/10
 */
public class UserRole  {
	private Integer userId;	//用户ID
	private Integer roleId;	//角色ID
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
}