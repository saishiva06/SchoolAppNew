package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.entity.BudgetDetails;

public interface BudgetDetailsService {
	 int createBudgetDetails(String recieptNo,String budgetName,String budgetCost, String budgetBy, String budgetDate, String budgetType,
	 		   String other);
	 int updateBudgetDetails(BudgetDetails budgetDetails);
	 List<BudgetDetails>  getBudgetDetailsMap();
	 List<BudgetDetails>  getAllBudgetDetailsBySearch(String studentsClass,String rollNum, String studentName);
	 boolean deleteBudgetDetails(String recieptId);
	 BudgetDetails getBudgetDetailsById(int reciptId);
	 List<BudgetDetails>  getTopExpensesDetailsMap();
	 List<BudgetDetails>  getRecentExpensesDetailsMap();
		
}