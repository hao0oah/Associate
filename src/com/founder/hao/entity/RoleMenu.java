package com.founder.hao.entity;

/**
 * 角色和菜单中间表(sys_role_menu)
 * @author Hao
 * @date 2016/05/10
 */
public class RoleMenu  {
	private Integer roleId;	//角色ID
	private Integer menuId;	//菜单ID 
	
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public Integer getMenuId() {
		return menuId;
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	
}