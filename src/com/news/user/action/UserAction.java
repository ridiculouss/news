package com.news.user.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.news.user.entity.User;
import com.news.user.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@Component("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	@Resource(name="userService")
	private UserService userService;
	
	private User user = new User();
	
	private String checkcode;
	
	//注册前校验用户名是否唯一
	public void validateRegist() {
		User existUser = userService.findByUserName(user.getUname());
		if (existUser != null) {
			addFieldError("userName", "用户名已经存在！");
		}
	}
	
	//注册前校验用户名是否唯一
	public String findByName() throws IOException {
		User existUser = userService.findByUserName(user.getUname());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (existUser != null) {
			out.println("<font color='red'>用户名已经存在！</font>");
		}else {
			out.println("<font color='green'>该用户名可用！</font>");
		}
		return NONE;
	}

	public String regist(){
		//判断验证码
		//从session中获得验证码的随机值
		String checkcode1 = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		if (!checkcode1.equalsIgnoreCase(checkcode)) {
			this.addFieldError("checkcodeInfo", "验证码输入错误！");
			return "registPage";
		}
		userService.regist(user);
		return "registSuccess";
	}
	
	public String login(){
		//判断验证码
		//从session中获得验证码的随机值
		String checkcode1 = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		if (!checkcode1.equalsIgnoreCase(checkcode)) {
			this.addFieldError("checkcodeInfo", "验证码输入错误！");
			return "loginPage";
		}
		User user2 = userService.login(user);
		if (user2 == null) {
			this.addActionError("用户名和密码不匹配！");
			return "loginPage";
		}else {
			ServletActionContext.getRequest().getSession().setAttribute("existUser", user2);
			return "loginSuccess";
		}
	}
	
	public String exit() {
		ServletActionContext.getRequest().getSession().invalidate();
		return "exitSuccess";
	}
	
	public String center() {
		if (ServletActionContext.getRequest().getSession().getAttribute("existUser") != null) {
			return "centerSuccess";
		}
		return "centerFail";
	}
	
	
	
	
	
	
	
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public User getModel() {
		return user;
	}
	
}
