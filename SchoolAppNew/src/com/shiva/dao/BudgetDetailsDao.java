package com.shiva.dao;

import java.util.List;
import java.util.Map;

import com.shiva.entity.BudgetDetails;
import com.shiva.entity.FeeDetails;

public interface BudgetDetailsDao {
	int createBudgetDetails(int budgetId, String budgetName,String budgetCost, String budgetBy, String budgetDate, String budgetType,
	 		   String other);
	         int updateBudgetDetails(BudgetDetails budgetDetails);
	         List<BudgetDetails>  getBudgetDetailsMap();
			 List<BudgetDetails>  getAllBudgetDetailsBySearch(String studentsClass,String rollNum, String studentName);
			 boolean deleteBudgetDetails(String recieptId);
			 BudgetDetails getBudgetDetailsById(int reciptId);
			 List<BudgetDetails>  getTopExpensesDetailsMap();
			 List<BudgetDetails>  getRecentExpensesDetailsMap();
		}