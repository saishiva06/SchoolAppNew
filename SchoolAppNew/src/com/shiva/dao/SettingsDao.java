package com.shiva.dao;


public interface SettingsDao {
	 int addCompalint(int cbId, String perName ,String perPhone,String perMail,String cbDate,String cbDesc);
	 int addNews(int newsId, String news_headline ,String news_desc,String other,String cbDate);	 
}