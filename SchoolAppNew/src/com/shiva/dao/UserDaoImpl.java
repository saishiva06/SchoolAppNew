package com.shiva.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class UserDaoImpl extends SqlMapClientDaoSupport implements UserDao {

	private SqlMapClientTemplate template = getSqlMapClientTemplate();

	public UserDaoImpl() {
	}

	@Override
	public boolean authenticateUser(String u_login, String u_password) {
		try {
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("u_login", u_login);
			paramsMap.put("u_password", u_password);
			
			if (template.queryForObject("authenticateUser", paramsMap) != null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updatePassword(String u_name, String u_password) {
		try {
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("u_login", u_name);
			paramsMap.put("u_password", u_password);
			int result = template.update("updatePassword", paramsMap);
			if (result > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
   }
}