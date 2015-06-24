package com.shiva.dao;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.FeeDetails;

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

	@SuppressWarnings({ "unchecked", "finally" })
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

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<FeeDetails> getAllFeeDetailsBySearch(String studentClass,String studentName, String rollNum) {
		List<FeeDetails> feeDetailsList = new LinkedList<FeeDetails>();
		try {
				Map<String, Object> paramsMap = new HashMap<String, Object>();
				paramsMap.put("roll_no", rollNum);
				paramsMap.put("student_name", studentName);
				paramsMap.put("student_class", studentClass);
				feeDetailsList = (List<FeeDetails>) template.queryForList("getAllFeeDetailsBySearch", paramsMap);
	        } catch (Exception e) {
				e.printStackTrace();
			} finally {
				return feeDetailsList;
			}
		}
	

	@Override
	public boolean deleteFeeDetails(String recieptId) {
		try {
			int result = template.delete("deleteFeeDetails",recieptId);
			return result != -1 ? true : false;
		} catch (Exception ex) {
			// log.error("TeacherDao:deleteAllTeachers::" + ex.getMessage());
			return false;
		}
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

	@Override
	public String getTotalPaidFee() {
		try {
			return (String)template.queryForObject("getTotalPaidFee");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
}