package com.shiva.dao;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.News;
import com.shiva.entity.Student;

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

	@Override
	public int addNews(int newsId, String news_headline, String news_desc,
			String other, String cbDate) {
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("news_headline", news_headline);
		paramsMap.put("news_desc", news_desc);
		paramsMap.put("other", other);
		paramsMap.put("news_date", cbDate);
		try {
			int result = (Integer) template.insert("addNews", paramsMap);
			return result;
		} catch (Exception ex) {
			return -1;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<News> getAllNews() {
		List<News> resultList = new LinkedList<News>();
		try {
			resultList = template.queryForList("getAllNews");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			return resultList;
		}
	}
}