package com.shiva.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	public int createBudgetDetails(String recieptNo,String budgetName,String budgetCost, String budgetBy, String budgetDate, String budgetType,
	 		   String other) {
		return budgetDetailsDao.createBudgetDetails(recieptNo,budgetName,budgetCost,budgetBy, budgetDate,  budgetType,
		 		    other);
	}

	@Override
	public int updateBudgetDetails(BudgetDetails budgetDetails) {
		return budgetDetailsDao.updateBudgetDetails(budgetDetails);
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
	public BudgetDetails getBudgetDetailsById(int reciptId) {
		BudgetDetails budgetDetails = budgetDetailsDao.getBudgetDetailsById(reciptId);
		SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(budgetDetails.getBudgetDate());
		} catch (ParseException e) {
		}
	String formattedDate = output.format(date);
	budgetDetails.setBudgetDate(formattedDate);	
	return budgetDetails;
	}

	@Override
	public List<BudgetDetails> getTopExpensesDetailsMap() {
		return budgetDetailsDao.getTopExpensesDetailsMap();
	}

	@Override
	public List<BudgetDetails> getRecentExpensesDetailsMap() {
		return budgetDetailsDao.getRecentExpensesDetailsMap();
	}

}
