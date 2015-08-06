package com.shiva.entity;

public class BudgetDetails {

	private int budgetId;
	private String recieptNo;
	private String budgetName;
	private String budgetCost;
    private String budgetBy;
    private String budgetDate;
    private String budgetType;
    private String other;
    
    public BudgetDetails(int budgetId, String recieptNo ,String budgetName,String budgetCost, String budgetBy, String budgetDate, String budgetType,
 		   String other) {
 		// TODO Auto-generated constructor stub
 	}
    
    public BudgetDetails() {
 		// TODO Auto-generated constructor stub
 	}
	public int getBudgetId() {
		return budgetId;
	}

	public void setBudgetId(int budgetId) {
		this.budgetId = budgetId;
	}

	public String getBudgetName() {
		return budgetName;
	}

	public void setBudgetName(String budgetName) {
		this.budgetName = budgetName;
	}

	public String getBudgetCost() {
		return budgetCost;
	}

	public void setBudgetCost(String budgetCost) {
		this.budgetCost = budgetCost;
	}

	public String getBudgetBy() {
		return budgetBy;
	}

	public void setBudgetBy(String budgetBy) {
		this.budgetBy = budgetBy;
	}

	public String getBudgetDate() {
		return budgetDate;
	}

	public void setBudgetDate(String budgetDate) {
		this.budgetDate = budgetDate;
	}

	public String getBudgetType() {
		return budgetType;
	}

	public void setBudgetType(String budgetType) {
		this.budgetType = budgetType;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getRecieptNo() {
		return recieptNo;
	}

	public void setRecieptNo(String recieptNo) {
		this.recieptNo = recieptNo;
	}

   

}