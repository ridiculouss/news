package com.news.admin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.news.admin.entity.Admin;

@Component("adminDao")
@SuppressWarnings("all")
public class AdminDao {

	@Resource
	private HibernateTemplate hibernateTemplate;

	public Admin findAdmin(Admin admin) {
		String hql = "from Admin where name = ? and password = ?";
		List<Admin> list = (List<Admin>) hibernateTemplate.find(hql, admin.getName(), admin.getPassword());
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
}
