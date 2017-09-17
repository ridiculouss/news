package com.news.admin.action;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.news.admin.entity.Admin;
import com.news.admin.service.AdminService;
import com.news.user.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
@Component("adminAction")
@Scope("prototype")
public class AdminAction extends ActionSupport implements ModelDriven<Admin>{

	@Resource(name="adminService")
	private AdminService adminService;
	
	private Admin admin = new Admin();
	
	public String login(){
		Admin admin2 = adminService.login(admin);
		if (admin2 == null) {
			this.addActionError("用户名和密码不匹配！");
			return "loginPage";
		}else {
			ServletActionContext.getRequest().getSession().setAttribute("existAdmin", admin2);
			return "loginSuccess";
		}
	}
	
	public String skip() {
		if (ServletActionContext.getRequest().getSession().getAttribute("existAdmin") != null) {
			return "centerSuccess";
		}
		return "centerFail";
	}
	
	
	
	
	
	
	
	
	
	
	
	public Admin getModel() {
		return admin;
	}
}
