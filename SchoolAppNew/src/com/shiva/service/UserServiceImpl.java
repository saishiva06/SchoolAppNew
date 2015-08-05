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
		return userDao.authenticateUser(u_name, u_password);
	}

	
	public boolean updatePassword(String u_name, String u_password) {
		return userDao.updatePassword(u_name, u_password);
	}

}
