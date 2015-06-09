package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.BudgetDetailsDao;
import com.shiva.entity.BudgetDetails;

public class BudgetDetailsServiceImpl implements BudgetDetailsService {

	private BudgetDetailsDao budgetDetailsDao;

	public BudgetDetailsDao getBudgetDetailsDao() {
		return budgetDetailsDao;
	}

	public void setBudgetDetailsDao(BudgetDetailsDao budgetDetailsDao) {
		this.budgetDetailsDao = budgetDetailsDao;
	}

	public BudgetDetailsServiceImpl() {
	}

	@Override
	public int createBudgetDetails(int budgetId, String budgetName,String budgetCost, String budgetBy, String budgetDate, String budgetType,
	 		   String other) {
		return budgetDetailsDao.createBudgetDetails(budgetId,budgetName,budgetCost,budgetBy, budgetDate,  budgetType,
		 		    other);
	}

	@Override
	public int updateBudgetDetails(Map<String, Object> budgetDeailsMap) {
		return budgetDetailsDao.updateBudgetDetails(budgetDeailsMap);
	}

	@Override
	public List<BudgetDetails> getBudgetDetailsMap() {
		return budgetDetailsDao.getBudgetDetailsMap();
	}

	@Override
	public List<BudgetDetails> getAllBudgetDetailsBySearch(
			String studentsClass, String rollNum, String studentName) {
		return budgetDetailsDao.getAllBudgetDetailsBySearch(studentsClass, rollNum, studentName);
	}

	@Override
	public boolean deleteBudgetDetails(String recieptId) {
		return budgetDetailsDao.deleteBudgetDetails(recieptId);
	}

	@Override
	public BudgetDetails getBudgetDetailsById(String reciptId) {
		return budgetDetailsDao.getBudgetDetailsById(reciptId);
	}

}
