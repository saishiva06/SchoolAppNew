package com.shiva.dao;

import java.util.List;
import java.util.Map;

import com.shiva.entity.FeeDetails;

public interface FeeDetailsDao {
	int createFeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String admissionFee, 
			   String otherFee, String feePayDate1);
	 int updateFeeDetails(Map<String, Object> feeDeailsMap);
	 List<FeeDetails>  getFeeDetailsMap();
	 List<FeeDetails>  getAllFeeDetailsBySearch(String studentsClass,String rollNum, String studentName);
	boolean deleteFeeDetails(String recieptId);
	FeeDetails getFeeDetailsById(String reciptId);
	 String getTotalPaidFee();
}