package com.founder.hao.entity;

import java.io.Serializable;

/**
 * 处理结果返回实体类，用来转为JSON字符串进行返回
 * @author Hao
 * @date 2016/05/09
 */
public class ReturnEntity implements Serializable{

	private static final long serialVersionUID = 7121534983744306599L;
	
	private Object entity;
	private String msg;
	private boolean status;
	
	public Object getEntity() {
		return entity;
	}
	public void setEntity(Object entity) {
		this.entity = entity;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ReturnEntity [entity=" + entity + ", msg=" + msg + ", status="
				+ status + "]";
	}
	
	
}
