package com.shiva.entity;

public class News {

	private int newsId;
	private String newsHeadLine;
	private String newsDesc;
	private String newsDate;
   private String other;
    
    public int getNewsId() {
	return newsId;
}

public void setNewsId(int newsId) {
	this.newsId = newsId;
}

public String getNewsHeadLine() {
	return newsHeadLine;
}

public void setNewsHeadLine(String newsHeadLine) {
	this.newsHeadLine = newsHeadLine;
}

public String getNewsDesc() {
	return newsDesc;
}

public void setNewsDesc(String newsDesc) {
	this.newsDesc = newsDesc;
}

public String getNewsDate() {
	return newsDate;
}

public void setNewsDate(String newsDate) {
	this.newsDate = newsDate;
}

public String getOther() {
	return other;
}

public void setOther(String other) {
	this.other = other;
}

	public News(int newsId, String newsHeadLine ,String newsDesc,String other) {
 		// TODO Auto-generated constructor stub
 	}
    
    public News() {
 		// TODO Auto-generated constructor stub
 	}
	
   

}