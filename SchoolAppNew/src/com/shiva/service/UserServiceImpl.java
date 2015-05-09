package com.shiva.service;

import com.shiva.dao.UserDao;

public class UserServiceImpl implements UserService {

	protected UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public boolean authenticateUser(String u_name, String u_password) {
		// TODO Auto-generated method stub
		return userDao.authenticateUser(u_name, u_password);
	}

}
