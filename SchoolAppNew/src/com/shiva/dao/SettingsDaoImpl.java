package com.shiva.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class SettingsDaoImpl extends SqlMapClientDaoSupport implements SettingsDao {
	private SqlMapClientTemplate template = getSqlMapClientTemplate();

	public SettingsDaoImpl() {
	}

	@Override
	public int addCompalint(int cbId, String perName, String perPhone,
			String perMail, String cbDate, String cbDesc) {
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("per_name", perName);
		paramsMap.put("per_phone", perPhone);
		paramsMap.put("per_mail", perMail);
		paramsMap.put("cb_date", cbDate);
		paramsMap.put("cb_desc", cbDesc);
		try {
			int result = (Integer) template.insert("addCompalint", paramsMap);
			return result;
		} catch (Exception ex) {
			return -1;
		}
	}
	}