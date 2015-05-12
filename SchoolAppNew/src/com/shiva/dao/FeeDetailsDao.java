package com.shiva.dao;

import java.util.Map;

import com.shiva.entity.FeeDetails;

public interface FeeDetailsDao {
	int createFeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String admissionFee, 
			   String tutionFee, String examFee, String vanFee, String iitFee,String otherFee,
			   String feePayDate1, String feePayDate2, String feePayDate3,String feePayDate4,String feePayDate5,int feeStatus);
	 int updateFeeDetails(Map<String, Object> feeDeailsMap);
	<List>FeeDetails getFeeDetailsMap();
	<List>FeeDetails getAllFeeDetailsBySearch(String studentsClass,String rollNum, String studentName);
	boolean deleteFeeDetails(String recieptId);
	FeeDetails getFeeDetailsById(String reciptId);
}