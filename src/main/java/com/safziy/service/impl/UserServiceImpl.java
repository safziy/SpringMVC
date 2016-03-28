package com.safziy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safziy.dao.UserDao;
import com.safziy.service.UserService;
import com.safziy.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public List<User> list() {
		return userDao.list();
	}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
