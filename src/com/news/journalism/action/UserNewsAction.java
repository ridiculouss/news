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
import com.news.journalism.service.UserNewsService;
import com.news.user.entity.User;
import com.news.util.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
@Component("userNewsAction")
@Scope("prototype")
public class UserNewsAction extends ActionSupport implements ModelDriven<News>{

	private News news = new News();
	
	@Resource(name="userNewsService")
	private UserNewsService userNewsService;
	
	private int page;
	private int issue;
	
	private File upload;
	private String uploadFileName;
	private String uploadContextType;

	public String create() throws IOException {
		news.setDate(new Date());
		if (upload != null) {
			// 获得文件上传的磁盘绝对路径
			String realPath = ServletActionContext.getServletContext().getRealPath("/newsImages");
			// 创建一个文件
			File diskFile = new File(realPath+"//"+uploadFileName);
			// 文件上传
			FileUtils.copyFile(upload, diskFile); 
			news.setImage("newsImages/"+uploadFileName);
		}
		news.setClick(0);
		news.setIs_check(0);
		news.setIs_hot(0);
		news.setIs_issue(0);
		User existUser = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		news.setUser(existUser);
		userNewsService.createNews(news);
		return "createSuccess";
	}
	
	public String findByUid() {
		User existUser = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		PageBean<News> pageBean = userNewsService.findByUid(existUser.getUid(),page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByUidSuccess";
	}
	
	public String findByIssue() {
		User existUser = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		PageBean<News> pageBean = userNewsService.findByIssue(existUser.getUid(),issue,page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		if (issue == 1) {
			return "IssueSuccess";
		}else {
			return "notIssueSuccess";
		}
		
	}

	public String changeIssueStatus() {
		userNewsService.changeStatus(news);
		return "changeSuccess";
	}

	public String showNews() {
		News existNews = userNewsService.showNews(news);
		ServletActionContext.getRequest().getSession().setAttribute("existNews", existNews);
		return "showUserNews";
	}
	
	
	
	
	
	public void setPage(int page) {
		this.page = page;
	}

	public void setIssue(int issue) {
		this.issue = issue;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContextType(String uploadContextType) {
		this.uploadContextType = uploadContextType;
	}

	public News getModel() {
		return news;
	}
	
}
