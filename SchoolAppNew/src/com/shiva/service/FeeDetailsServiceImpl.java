package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.FeeDetailsDao;
import com.shiva.entity.FeeDetails;


public class FeeDetailsServiceImpl implements FeeDetailsService {

	private FeeDetailsDao feeDetailsDao;

	public FeeDetailsDao getFeeDetailsDao() {
		return feeDetailsDao;
	}




	public void setFeeDetailsDao(FeeDetailsDao feeDetailsDao) {
		this.feeDetailsDao = feeDetailsDao;
	}




	public FeeDetailsServiceImpl() {
	}

	

	
	@Override
	public int createFeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String admissionFee, 
			   String otherFee,String feePayDate1) {
		// TODO Auto-generated method stub
		return feeDetailsDao.createFeeDetails(recieptNo,  rollNo, studentName,  studentClass,  admissionFee, otherFee,feePayDate1);
	}

	@Override
	public int updateFeeDetails(Map<String, Object> feeDeailsMap) {
		// TODO Auto-generated method stub
		return feeDetailsDao.updateFeeDetails(feeDeailsMap);
	}

	@Override
	public List<FeeDetails>  getFeeDetailsMap() {
		// TODO Auto-generated method stub
		return feeDetailsDao.getFeeDetailsMap();
	}

	@Override
	public List<FeeDetails>  getAllFeeDetailsBySearch(String studentsClass,
			String rollNum, String studentName) {
		// TODO Auto-generated method stub
		System.out.println("@@@@@@@@@@@@@");
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
		return feeDetailsDao.getFeeDetailsById(reciptId);
	}

	

	

}
