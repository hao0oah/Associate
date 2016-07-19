package com.founder.hao.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 菜单信息表(sys_menu)
 * 菜单可以调整顺序，增加，删除，修改。可以包括多级菜单
 * @author Hao
 * @date 2016/05/09
 */
public class Menu implements Serializable{

	private static final long serialVersionUID = 7989411170337269683L;
	
	private Integer menuId;
	private String menuName;
	private String menuUrl;
	private Integer menuParentId;
	private Integer menuOrder;
	private String menuIcon;
	private String menuType;
	private String menuTarget;
	
	private String menuCss;
	private Integer menuLevel;
	
	private List<Menu> subMenus = new ArrayList<Menu>();
	
	public Integer getMenuId() {
		return menuId;
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public Integer getMenuParentId() {
		return menuParentId;
	}
	public void setMenuParentId(Integer menuParentId) {
		this.menuParentId = menuParentId;
	}
	public Integer getMenuOrder() {
		return menuOrder;
	}
	public void setMenuOrder(Integer menuOrder) {
		this.menuOrder = menuOrder;
	}
	public String getMenuIcon() {
		return menuIcon;
	}
	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}
	public String getMenuType() {
		return menuType;
	}
	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}
	public String getMenuTarget() {
		return menuTarget;
	}
	public void setMenuTarget(String menuTarget) {
		this.menuTarget = menuTarget;
	}
	public List<Menu> getSubMenus() {
		return subMenus;
	}
	public void setSubMenus(List<Menu> subMenus) {
		this.subMenus = subMenus;
	}
	public String getMenuCss() {
		return menuCss;
	}
	public void setMenuCss(String menuCss) {
		this.menuCss = menuCss;
	}
	public Integer getMenuLevel() {
		return menuLevel;
	}
	public void setMenuLevel(Integer menuLevel) {
		this.menuLevel = menuLevel;
	}

}
