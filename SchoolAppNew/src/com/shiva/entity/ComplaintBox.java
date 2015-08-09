package com.shiva.entity;

public class ComplaintBox {

	private int cbId;
	private String perName;
	private String perPhone;
	private String perMail;
   private String cbDate;
   public int getCbId() {
	return cbId;
}

public void setCbId(int cbId) {
	this.cbId = cbId;
}

public String getPerName() {
	return perName;
}

public void setPerName(String perName) {
	this.perName = perName;
}

public String getPerPhone() {
	return perPhone;
}

public void setPerPhone(String perPhone) {
	this.perPhone = perPhone;
}

public String getPerMail() {
	return perMail;
}

public void setPerMail(String perMail) {
	this.perMail = perMail;
}

public String getCbDate() {
	return cbDate;
}

public void setCbDate(String cbDate) {
	this.cbDate = cbDate;
}

public String getCbDesc() {
	return cbDesc;
}

public void setCbDesc(String cbDesc) {
	this.cbDesc = cbDesc;
}

private String cbDesc;
    
    

	public ComplaintBox(int cbId, String perName ,String perPhone,String perMail,String cbDate,String cbDesc) {
 		// TODO Auto-generated constructor stub
 	}
    
    public ComplaintBox() {
 		// TODO Auto-generated constructor stub
 	}
	
   

}