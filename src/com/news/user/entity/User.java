package com.news.user.entity;

import java.util.HashSet;
import java.util.Set;

import com.news.journalism.entity.News;

public class User {
	private Integer uid;
	private String uname;
	private String upassword;
	private Set<News> news = new HashSet<News>();
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public Set<News> getNews() {
		return news;
	}
	public void setNews(Set<News> news) {
		this.news = news;
	}
	
}
