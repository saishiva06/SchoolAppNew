package com.shiva.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.BudgetDetails;
import com.shiva.entity.FeeDetails;
import com.shiva.entity.Student;
import com.shiva.entity.StudentByClass;
import com.shiva.service.BudgetDetailsService;
import com.shiva.service.StudentService;
import com.shiva.service.TeacherService;
import com.shiva.service.UserService;
import com.shiva.util.RandomGenerator;

@Controller
public class DashboardController {

	HttpSession session;

	private UserService userService;
	private StudentService studentService;
	private TeacherService teacherService;
	public BudgetDetailsService getBudgetDetailsService() {
		return budgetDetailsService;
	}

	public void setBudgetDetailsService(BudgetDetailsService budgetDetailsService) {
		this.budgetDetailsService = budgetDetailsService;
	}
	private BudgetDetailsService budgetDetailsService;
	


	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	
	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	@RequestMapping("/dashboard.do")
	public ModelAndView checkLogin(HttpServletRequest request) throws Exception {
		session = request.getSession(false);
		if(session == null) {
		String userName = request.getParameter("teachername");
		String userPassword = request.getParameter("teacherpass");
		if (userName != null && userName.length() > 0 && userPassword != null && userPassword.length() > 0) {
			boolean loginStatus = userService.authenticateUser(userName,userPassword);
			if (!loginStatus) {
				System.out.println("@@@ Login failure...........");
				return new ModelAndView("redirect:index.do");
			  } else {
				System.out.println("@@@ Login success...........");
				session = request.getSession(true);
				session.setAttribute("user_name", userName);
			}
		} else {
			System.out.println("@@@ Login failure........... no credentials");
		    return new ModelAndView("redirect:index.do");
		}
	} 
		List<StudentByClass> studentByClassList= studentService.getStudentCountByClass();
		int teacherCount = teacherService.getTeachers().size();
		int studentsCount = studentService.getStudents().size();
		session.setAttribute("teacherCount", teacherCount);
		session.setAttribute("studentsCount", studentsCount);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dashboard");
		if(studentByClassList!=null && studentByClassList.size()!=0) {
			mav.addObject("studentsData", studentByClassList);
		}
		return mav;

}
	@RequestMapping("/budgetDashboard.do")
	public ModelAndView loadBudgetDashboard(HttpServletRequest request) throws Exception {
		List<BudgetDetails> budgetDetailsList = budgetDetailsService.getBudgetDetailsMap();
		BudgetDetails FundsDetails = budgetDetailsList.get(0);
		BudgetDetails limitDetails = budgetDetailsList.get(1);
		BudgetDetails expensesDetails = budgetDetailsList.get(2);
		BudgetDetails loanDetails = budgetDetailsList.get(3);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("budgetDashboard");
		mav.addObject("totalFunds", FundsDetails.getBudgetCost());
		mav.addObject("availableLimit", limitDetails.getBudgetCost());
		mav.addObject("totalExpenses", expensesDetails.getBudgetCost());
		mav.addObject("totalLoans", loanDetails.getBudgetCost());
		
		List<BudgetDetails> recentDetailsList = budgetDetailsService.getRecentExpensesDetailsMap();
		List<BudgetDetails> topDetailsList = budgetDetailsService.getTopExpensesDetailsMap();
		
		if(budgetDetailsList!=null && budgetDetailsList.size()!=0) {
			mav.addObject("topExpensesData", budgetDetailsList);
			mav.addObject("latestExpensesData", budgetDetailsList);
		}
		if(recentDetailsList!=null && recentDetailsList.size()!=0) {
			mav.addObject("recentDetailsList", recentDetailsList);
		}
		if(topDetailsList!=null && topDetailsList.size()!=0) {
			mav.addObject("topDetailsList", topDetailsList);
		}
		return mav;
	}
		
	@RequestMapping("/loadNewExpense.do")
		public ModelAndView loadNewExpenseDashBoard() throws Exception {
			return new ModelAndView("addNewExpense");
  }

	@RequestMapping("/addNewExpense.do")
	public ModelAndView addFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		try {
			String budgetName = request.getParameter("expenseName");
			String budgetCost = request.getParameter("expenseCost");
			String budgetBy = request.getParameter("expenseBy");
			String budgetDate = request.getParameter("expenseDate");
			String other = request.getParameter("other");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date budgetDate1 = null;
			try {
				budgetDate1 = sdf.parse(budgetDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedBd = output.format(budgetDate1);
			int result = budgetDetailsService.createBudgetDetails(budgetName,budgetCost,budgetBy, formattedBd,  "Debited",
		 		    other);
			System.out.println("@@@ new expense added.........." + result);
			BudgetDetails budgetDeails = budgetDetailsService.getBudgetDetailsById(3);
			int totalBudget = Integer.parseInt(budgetDeails.getBudgetCost());
			totalBudget = totalBudget + Integer.parseInt(budgetCost);
			budgetDeails.setBudgetCost(String.valueOf(totalBudget));
			budgetDetailsService.updateBudgetDetails(budgetDeails);
			return new ModelAndView("redirect:budgetDashboard.do");
			}
			catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("addNewExpense");
		}
		
	}
	@RequestMapping("/deleteBudgetDetails.do")
	public ModelAndView loadFeeDetailsDashboard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String budgetId = request.getParameter("budgetId");
		String budgetCost = request.getParameter("amount");
		System.out.println("@@@ delete feeDetailsId.........." + budgetId);
		if (budgetId != null && budgetId.length() > 0) {
			boolean status = budgetDetailsService.deleteBudgetDetails(budgetId);
			BudgetDetails budgetDeails = budgetDetailsService.getBudgetDetailsById(3);
			int totalBudget = Integer.parseInt(budgetDeails.getBudgetCost());
			totalBudget = totalBudget - Integer.parseInt(budgetCost);
			budgetDeails.setBudgetCost(String.valueOf(totalBudget));
			budgetDetailsService.updateBudgetDetails(budgetDeails);
			System.out.println("@@@ status...." + status);
		}
		return new ModelAndView("redirect:budgetDashboard.do");
	}
	
	@RequestMapping("/updateLoanAmount.do")
	public ModelAndView updateLoanAmount() throws Exception {
		BudgetDetails budgetDetails = budgetDetailsService.getBudgetDetailsById(4);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("updateLoanAmount");
		mav.addObject("loanAmountDetails", budgetDetails);
		return mav;
}
	@RequestMapping("/updateSchoolFunds.do")
	public ModelAndView updateSchoolFunds() throws Exception {
		BudgetDetails budgetDetails = budgetDetailsService.getBudgetDetailsById(1);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("updateSchoolFunds");
		mav.addObject("schoolFunds", budgetDetails);
		return mav;
}
	@RequestMapping("/updateAvailableLimit.do")
	public ModelAndView updateAvailableLimit() throws Exception {
		BudgetDetails budgetDetails = budgetDetailsService.getBudgetDetailsById(2);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("updateAvailableLimit");
		mav.addObject("availbleLimitDetails", budgetDetails);
		return mav;
}
	
	@RequestMapping("/updateAmountDetails.do")
	public ModelAndView updateAmountDetails(HttpServletRequest request) throws Exception {
		String budgetId = request.getParameter("budgetId");
		String budgetCost = request.getParameter("expenseCost");
		String budgetBy = request.getParameter("expenseBy");
		String other = request.getParameter("other");
		BudgetDetails budgetDetails = new BudgetDetails();
		budgetDetails.setBudgetBy(budgetBy);
		budgetDetails.setBudgetCost(budgetCost);
		budgetDetails.setBudgetId(Integer.parseInt(budgetId));
		budgetDetails.setOther(other);
		budgetDetailsService.updateBudgetDetails(budgetDetails);
		System.out.println("@@@ budget details updated..........");
		return new ModelAndView("redirect:budgetDashboard.do");
		
}
	

}
