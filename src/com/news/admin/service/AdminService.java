package com.news.admin.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.news.admin.dao.AdminDao;
import com.news.admin.entity.Admin;


@Component("adminService")
@Transactional
public class AdminService {
	
	@Resource(name="adminDao")
	private AdminDao adminDao;

	public Admin login(Admin admin) {
		return adminDao.findAdmin(admin);
	}
	
}
