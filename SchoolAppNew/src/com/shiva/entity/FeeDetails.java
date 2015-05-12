package com.shiva.entity;

public class FeeDetails {

	private String recieptNo;
	private String rollNo;
	private String studentName;
    private String studentClass;
    private String feeType;
   private String otherFee;
    private String feePayDate1;
   
   public FeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String feeType, String otherFee,
		   String feePayDate1) {
		// TODO Auto-generated constructor stub
	}
   
   public FeeDetails() {
		// TODO Auto-generated constructor stub
	}

public String getRecieptNo() {
	return recieptNo;
}

public void setRecieptNo(String recieptNo) {
	this.recieptNo = recieptNo;
}

public String getRollNo() {
	return rollNo;
}

public void setRollNo(String rollNo) {
	this.rollNo = rollNo;
}

public String getStudentName() {
	return studentName;
}

public void setStudentName(String studentName) {
	this.studentName = studentName;
}

public String getStudentClass() {
	return studentClass;
}

public void setStudentClass(String studentClass) {
	this.studentClass = studentClass;
}

public String getFeeType() {
	return feeType;
}

public void setFeeType(String feeType) {
	this.feeType = feeType;
}
public String getOtherFee() {
	return otherFee;
}

public void setOtherFee(String otherFee) {
	this.otherFee = otherFee;
}

public String getFeePayDate1() {
	return feePayDate1;
}

public void setFeePayDate1(String feePayDate1) {
	this.feePayDate1 = feePayDate1;
}
   }