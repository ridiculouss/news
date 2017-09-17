package com.news.journalism.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.cfg.beanvalidation.ActivationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.news.journalism.entity.News;
import com.news.journalism.service.AdminNewsService;
import com.news.journalism.service.UserNewsService;
import com.news.user.entity.User;
import com.news.util.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
@Component("adminNewsAction")
@Scope("prototype")
public class AdminNewsAction extends ActionSupport implements ModelDriven<News>{

	private News news = new News();
	
	@Resource(name="adminNewsService")
	private AdminNewsService adminNewsService;
	
	private int page;
	private int check;
	private int status;
	
	public String findAll() {
		PageBean<News> pageBean = adminNewsService.findAll(page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findAll";
	}
	
	public String findByCheck() {
		PageBean<News> pageBean = adminNewsService.findByCheck(check,page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		if (check == 1 ){
			return "CheckSuccess";
		}else {
			return "notCheckSuccess";
		}
	}
	
	public String changeCheckStatus() {
		adminNewsService.changeStatus(news,status);
		return "changeSuccess";
	}
	
	
	
	
	
	
	public void setPage(int page) {
		this.page = page;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getPage() {
		return page;
	}

	public int getCheck() {
		return check;
	}

	public void setCheck(int check) {
		this.check = check;
	}

	public News getModel() {
		return news;
	}
	
}
