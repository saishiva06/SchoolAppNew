package com.shiva.service;


public interface UserService {
	
	boolean authenticateUser(String u_name, String u_password);
	boolean  updatePassword(String u_name, String u_password);
}