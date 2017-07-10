package com.shiva.service;

import com.shiva.dao.SettingsDao;
import com.shiva.entity.News;
import java.util.List;


public class SettingsServiceImpl implements SettingsService {
	private SettingsDao settingsDao;
	public SettingsDao getSettingsDao() {
		return settingsDao;
	}
	public void setSettingsDao(SettingsDao settingsDao) {
		this.settingsDao = settingsDao;
	}
	
	public int addCompalint(int cbId, String perName, String perPhone,
			String perMail, String cbDate, String cbDesc) {
		
		return settingsDao.addCompalint(cbId, perName, perPhone, perMail, cbDate, cbDesc);
	}
	@Override
	public int addNews(int newsId, String news_headline, String news_desc,
			String other, String cbDate) {
		
		return settingsDao.addNews(newsId, news_headline, news_desc, other, cbDate);
	}

	public List<News> getAllNews() {
		return settingsDao.getAllNews();
	}

	
}
