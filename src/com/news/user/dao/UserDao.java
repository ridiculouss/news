package com.news.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.news.user.entity.User;

@Component("userDao")
@SuppressWarnings("unchecked")
public class UserDao {

	@Resource
	private HibernateTemplate hibernateTemplate;
	
	public User findUser(User user) {
		String hql = "from User where uname = ? and upassword = ?";
		List<User> list = (List<User>) hibernateTemplate.find(hql, user.getUname(),user.getUpassword());
		if (list !=null && list.size() >0) {
			return list.get(0);
		}
		return null;
	}
	
	public void add(User user) {
		hibernateTemplate.save(user);
	}

	public User findByUserName(String uname) {
		String hql = "from User where uname = ?";
		List<User> list = (List<User>) hibernateTemplate.find(hql, uname);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}


}
