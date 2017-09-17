package com.news.journalism.entity;

import java.util.Date;

import com.news.user.entity.User;

public class News {
	private Integer nid;
	private String title;//标题
	private String source;//来源
	private String coulumn;//类别
	private Date date;//时间
	private String author;//作者
	private String content;//内容
	private String image;//图片URL
	private Integer click;//点击数
	private Integer is_hot;//是否热门	1:是	0:不是
	private Integer is_check;//是否审核通过	1:是	0:不是
	private Integer is_issue;//是否发布	1:是	0:不是
	private User user;//发布人
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public Integer getClick() {
		return click;
	}
	public void setClick(Integer click) {
		this.click = click;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCoulumn() {
		return coulumn;
	}
	public void setCoulumn(String coulumn) {
		this.coulumn = coulumn;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public Integer getIs_check() {
		return is_check;
	}
	public void setIs_check(Integer is_check) {
		this.is_check = is_check;
	}
	public Integer getIs_issue() {
		return is_issue;
	}
	public void setIs_issue(Integer is_issue) {
		this.is_issue = is_issue;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
}
