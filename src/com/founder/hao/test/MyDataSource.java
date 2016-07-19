package com.founder.hao.test;

public class MyDataSource {
	private String driverClassName;
	private String url;
	private String username;
	private String password;
	private int initialSize;
	private int minIdle;
	public String getDriverClassName() {
		return driverClassName;
	}
	public void setDriverClassName(String driverClassName) {
		this.driverClassName = driverClassName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
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
	public int getInitialSize() {
		return initialSize;
	}
	public void setInitialSize(int initialSize) {
		this.initialSize = initialSize;
	}
	public int getMinIdle() {
		return minIdle;
	}
	public void setMinIdle(int minIdle) {
		this.minIdle = minIdle;
	}
	@Override
	public String toString() {
		return "MyDataSource [driverClassName=" + driverClassName + ", url="
				+ url + ", username=" + username + ", initialSize="
				+ initialSize + ", minIdle=" + minIdle + "]";
	}
	
}
