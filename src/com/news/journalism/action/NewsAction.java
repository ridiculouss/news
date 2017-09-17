package com.news.journalism.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.cfg.beanvalidation.ActivationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.news.journalism.entity.News;
import com.news.journalism.service.NewsService;
import com.news.user.entity.User;
import com.news.util.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
@Component("newsAction")
@Scope("prototype")
public class NewsAction extends ActionSupport implements ModelDriven<News>{

	private News news = new News();
	
	@Resource(name="newsService")
	private NewsService newsService;
	
	private int newsId;
	private String newsCoulumn;
	private int page;
	private String keyword;
	
	
	public String execute() {
		List<News> nList = newsService.findAllNews();
		ActionContext.getContext().getValueStack().set("nList", nList);
		return "skipIndex";
	}
	
	public String findNewsByNid() {
		News existNews = newsService.findNewsByNid(newsId);
		ServletActionContext.getRequest().getSession().setAttribute("existNews", existNews);
		return "findSuccess";
	}
	
	public String findNewsByCoulumn() {
		PageBean<News> pageBean = newsService.findNewsByCoulumn(newsCoulumn,page);
		ServletActionContext.getRequest().getSession().setAttribute("newsCoulumn", newsCoulumn);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findCoulumnSuccess";
	}
	
	public String findNewsByKeyword() {
		PageBean<News> pageBean = newsService.findNewsByKeyword(keyword,page);
		System.out.println(keyword+"==========");
		ServletActionContext.getRequest().getSession().setAttribute("key", keyword);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findKeyword";
	}
	
	
	
	
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public void setNewsCoulumn(String newsCoulumn) {
		this.newsCoulumn = newsCoulumn;
	}

	public News getModel() {
		return news;
	}
	
}
