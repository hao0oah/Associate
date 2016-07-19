package com.founder.hao.entity;

/**
 * 角色信息表(sys_role)
 * 一个用户可以扮演多个角色，一个角色对应很多用户，需要一个中间表来连接两个表
 * @author Hao
 * @date 2016/05/10
 */
public class Role  {
	private Integer roleId;		//角色ID
	private String roleName;	//角色名称
	private Integer roleLevel;	//角色等级
	private String describe;	//描述
	
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public Integer getRoleLevel() {
		return roleLevel;
	}
	public void setRoleLevel(Integer roleLevel) {
		this.roleLevel = roleLevel;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	
}