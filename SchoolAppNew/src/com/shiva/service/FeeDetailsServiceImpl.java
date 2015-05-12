package com.shiva.service;

import java.util.Map;

import com.shiva.dao.FeeDetailsDao;
import com.shiva.entity.FeeDetails;

public class FeeDetailsServiceImpl implements FeeDetailsService {

	private FeeDetailsDao feeDetailsDao;

	public FeeDetailsServiceImpl() {
	}

	public void setFeeDetailsDao(FeeDetailsDao feeDetailsDao) {
		this.feeDetailsDao = feeDetailsDao;
	}

	@Override
	public int createFeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String admissionFee, 
			   String tutionFee, String examFee, String vanFee, String iitFee,String otherFee,
			   String feePayDate1, String feePayDate2, String feePayDate3,String feePayDate4,String feePayDate5,int feeStatus) {
		// TODO Auto-generated method stub
		return feeDetailsDao.createFeeDetails(recieptNo,  rollNo, studentName,  studentClass,  admissionFee, tutionFee,  examFee,  vanFee,  iitFee, otherFee,feePayDate1,  feePayDate2,  feePayDate3, feePayDate4, feePayDate5, 0);
	}

	@Override
	public int updateFeeDetails(Map<String, Object> feeDeailsMap) {
		// TODO Auto-generated method stub
		return feeDetailsDao.updateFeeDetails(feeDeailsMap);
	}

	@Override
	public <List> FeeDetails getFeeDetailsMap() {
		// TODO Auto-generated method stub
		return feeDetailsDao.getFeeDetailsMap();
	}

	@Override
	public <List> FeeDetails getAllFeeDetailsBySearch(String studentsClass,
			String rollNum, String studentName) {
		// TODO Auto-generated method stub
		return feeDetailsDao.getAllFeeDetailsBySearch(studentsClass, rollNum, studentName);
	}

	@Override
	public boolean deleteFeeDetails(String recieptId) {
		// TODO Auto-generated method stub
	return feeDetailsDao.deleteFeeDetails(recieptId);
	
	}

	@Override
	public FeeDetails getFeeDetailsById(String reciptId) {
		// TODO Auto-generated method stub
		return null;
	}

	

	

}
