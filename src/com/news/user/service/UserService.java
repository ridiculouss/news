package com.news.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.news.user.dao.UserDao;
import com.news.user.entity.User;

@Component("userService")
@Transactional
public class UserService {

	@Resource(name="userDao")
	private UserDao userDao;
	
	public void regist(User user) {
		userDao.add(user);
	}

	public User login(User user) {
		return userDao.findUser(user);
	}

	public User findByUserName(String uname) {
		return userDao.findByUserName(uname);
	}

}
