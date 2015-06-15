package com.shiva.dao;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.BudgetDetails;

public class BudgetDetailsDaoImpl extends SqlMapClientDaoSupport implements
BudgetDetailsDao {
	private SqlMapClientTemplate template = getSqlMapClientTemplate();

	public BudgetDetailsDaoImpl() {
	}

	@Override
	public int createBudgetDetails(String budgetName,String budgetCost, String budgetBy, String budgetDate, String budgetType,
	 		   String other) {
		// TODO Auto-generated method stub
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("budget_name", budgetName);
		paramsMap.put("budget_cost", budgetCost);
		paramsMap.put("budget_by", budgetBy);
		paramsMap.put("budget_date", budgetDate);
		paramsMap.put("budget_type", budgetType);
		paramsMap.put("other", other);
		try {
			int result = (Integer) template.insert("createBudgetDetails", paramsMap);
			return result;
		} catch (Exception ex) {
			return -1;
		}
	}

	@Override
	public int updateBudgetDetails(BudgetDetails budgetDetails) {
		try {
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("budget_id", budgetDetails.getBudgetId());
			paramsMap.put("budget_name", budgetDetails.getBudgetName());
			paramsMap.put("budget_cost", budgetDetails.getBudgetCost());
			paramsMap.put("budget_by", budgetDetails.getBudgetBy());
			paramsMap.put("budget_date", budgetDetails.getBudgetDate());
			paramsMap.put("budget_type", budgetDetails.getBudgetType());
			paramsMap.put("other", budgetDetails.getOther());
			
			int result = template.update("updateBudgetDetails", paramsMap);
			return result;
		} catch (Exception ex) {
			// log.error("TeacherDao:updateTeacher::" + ex.getMessage());
			return -1;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<BudgetDetails>  getBudgetDetailsMap() {
		List<BudgetDetails> resultList = new LinkedList<BudgetDetails>();
		try {
			resultList = template.queryForList("getBudgetDetailsMap");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			//log.error("StudentDao:getStudents::" + ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<BudgetDetails> getAllBudgetDetailsBySearch(String studentClass,String studentName, String rollNum) {
		List<BudgetDetails> feeDetailsList = new LinkedList<BudgetDetails>();
		try {
				Map<String, Object> paramsMap = new HashMap<String, Object>();
				paramsMap.put("roll_no", rollNum);
				paramsMap.put("student_name", studentName);
				paramsMap.put("student_class", studentClass);
				feeDetailsList = (List<BudgetDetails>) template.queryForList("getAllBudgetDetailsBySearch", paramsMap);
	        } catch (Exception e) {
				e.printStackTrace();
			} finally {
				return feeDetailsList;
			}
		}
	

	@Override
	public boolean deleteBudgetDetails(String recieptId) {
		try {
			int result = template.delete("deleteBudgetDetails",recieptId);
			return result != -1 ? true : false;
		} catch (Exception ex) {
			// log.error("TeacherDao:deleteAllTeachers::" + ex.getMessage());
			return false;
		}
	}

	@Override
	public BudgetDetails getBudgetDetailsById(int reciptId) {
		try {
			BudgetDetails budgetDetails = (BudgetDetails) template.queryForObject("getBudgetDetailsById", reciptId);
            return budgetDetails;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings({ "finally", "unchecked" })
	@Override
	public List<BudgetDetails> getTopExpensesDetailsMap() {
		List<BudgetDetails> resultList = new LinkedList<BudgetDetails>();
		try {
			resultList = template.queryForList("getTopExpensesDetailsMap");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<BudgetDetails> getRecentExpensesDetailsMap() {
		List<BudgetDetails> resultList = new LinkedList<BudgetDetails>();
		try {
			resultList = template.queryForList("getRecentExpensesDetailsMap");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			} finally {
			return resultList;
		}
	}
	
}