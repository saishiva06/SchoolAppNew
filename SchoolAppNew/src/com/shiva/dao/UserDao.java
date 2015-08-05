package com.shiva.dao;

public interface UserDao {

	boolean authenticateUser(String u_name, String u_password);
	boolean  updatePassword(String u_name, String u_password);
}
