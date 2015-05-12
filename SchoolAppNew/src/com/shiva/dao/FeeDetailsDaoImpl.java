package com.shiva.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.FeeDetails;
import com.shiva.entity.Teacher;

public class FeeDetailsDaoImpl extends SqlMapClientDaoSupport implements
		FeeDetailsDao {
	// private static final Logger log =
	// Logger.getLogger(TeacherDaoImpl.class.getName());
	private SqlMapClientTemplate template = getSqlMapClientTemplate();

	public FeeDetailsDaoImpl() {
	}

	@Override
	public int createFeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String admissionFee, 
			   String tutionFee, String examFee, String vanFee, String iitFee,String otherFee,
			   String feePayDate1, String feePayDate2, String feePayDate3,String feePayDate4,String feePayDate5,int feeStatus) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateFeeDetails(Map<String, Object> feeDeailsMap) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <List> FeeDetails getFeeDetailsMap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <List> FeeDetails getAllFeeDetailsBySearch(String studentsClass,
			String rollNum, String studentName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteFeeDetails(String recieptId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public FeeDetails getFeeDetailsById(String reciptId) {
		// TODO Auto-generated method stub
		return null;
	}

	
}