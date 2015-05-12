package com.shiva.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.FeeDetails;
import com.shiva.entity.Student;
import com.shiva.entity.Teacher;

public class FeeDetailsDaoImpl extends SqlMapClientDaoSupport implements
		FeeDetailsDao {
	private SqlMapClientTemplate template = getSqlMapClientTemplate();

	public FeeDetailsDaoImpl() {
	}

	@Override
	public int createFeeDetails(String recieptNo, String rollNo,String studentName, String studentClass, String feeType, 
	String otherFee, String feePayDate1) {
		// TODO Auto-generated method stub
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("recipt_no", recieptNo);
		paramsMap.put("roll_no", rollNo);
		paramsMap.put("student_name", studentName);
		paramsMap.put("student_class", studentClass);
		paramsMap.put("fee_type", feeType);
		paramsMap.put("fee_paid", otherFee);
		paramsMap.put("fee_pay_date_1", feePayDate1);
		try {
			int result = (Integer) template.insert("createFeeDetails", paramsMap);
			return result;
		} catch (Exception ex) {
			return -1;
		}
	}

	@Override
	public int updateFeeDetails(Map<String, Object> feeDeailsMap) {
		try {
			int result = template.update("updateFeeDetails", feeDeailsMap);
			return result;
		} catch (Exception ex) {
			// log.error("TeacherDao:updateTeacher::" + ex.getMessage());
			return -1;
		}
	}

	@Override
	public List<FeeDetails>  getFeeDetailsMap() {
		List<FeeDetails> resultList = new LinkedList<FeeDetails>();
		try {
			resultList = template.queryForList("getFeeDetailsMap");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			//log.error("StudentDao:getStudents::" + ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@Override
	public List<FeeDetails> getAllFeeDetailsBySearch(String studentsClass,
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
		try {
			FeeDetails feeDetails = (FeeDetails) template.queryForObject("getFeeDetailsById", reciptId);
            return feeDetails;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
}