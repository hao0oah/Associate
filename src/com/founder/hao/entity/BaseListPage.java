package com.founder.hao.entity;

import java.util.List;

/**
 * 分页查询JavaBean
 * @author Hao
 * @param <E>
 */
public class BaseListPage<E> {
	private int count;			//总条数*
	private int pageSize = 10;	//每页条数*
	private int totalPages;		//总页数(count/pageSize+1)
	private int currentPage = 1;//当前页，要查询页*
	private int begin = 0;		//开始索引(currentPage-1)*pageSize
	//private int end = pageSize-1;//结束索引(begin+PageSize)
	
	private List<?> beanList;
	private E  bean;
	
	public int getBegin() {
		begin = (currentPage-1)*pageSize;
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
		totalPages = (int)Math.ceil(count*1.0/pageSize);
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPages() {
		totalPages = (int)Math.ceil(count*1.0/pageSize);
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		begin = (currentPage-1)*pageSize;
	}
	public List<?> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<?> beanList) {
		this.beanList = beanList;
	}
	public E getBean() {
		return bean;
	}
	public void setBean(E bean) {
		this.bean = bean;
	}
	@Override
	public String toString() {
		return "BaseListPage [count=" + count + ", pageSize=" + pageSize
				+ ", totalPages=" + totalPages + ", currentPage=" + currentPage
				+ ", begin=" + begin + ", beanList="
				+ beanList + ", bean=" + bean + "]";
	}
	
}
