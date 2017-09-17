package com.news.util;

import java.util.List;

public class PageBean<T> {
	private int page;	//当前页数
	private int totalCount;	//总记录数
	private int totalPage;	//总页数
	private int eachPageCount;	//每页显示的记录数
	private List<T> list;	//每页显示数据的集合
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getEachPageCount() {
		return eachPageCount;
	}
	public void setEachPageCount(int eachPageCount) {
		this.eachPageCount = eachPageCount;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
}
