package com.shiva.service;

import com.shiva.dao.SettingsDao;
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

	
}
