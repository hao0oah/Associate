package com.founder.hao.entity;

/**
 * 机构信息表(sys_depart)
 * 即营业网点机构
 * @author Hao
 * @date 2016/05/12
 */
public class Depart {
	private Integer departId;
	private String  departCode;
	private String  departName;
	private Integer departType;
	private String  departAddress;
	
	public Integer getDepartId() {
		return departId;
	}
	public void setDepartId(Integer departId) {
		this.departId = departId;
	}
	public String getDepartCode() {
		return departCode;
	}
	public void setDepartCode(String departCode) {
		this.departCode = departCode;
	}
	public String getDepartName() {
		return departName;
	}
	public void setDepartName(String departName) {
		this.departName = departName;
	}
	public Integer getDepartType() {
		return departType;
	}
	public void setDepartType(Integer departType) {
		this.departType = departType;
	}
	public String getDepartAddress() {
		return departAddress;
	}
	public void setDepartAddress(String departAddress) {
		this.departAddress = departAddress;
	}
	
}
