package com.shiva.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.BudgetDetails;
import com.shiva.entity.Student;
import com.shiva.entity.StudentByClass;
import com.shiva.service.BudgetDetailsService;
import com.shiva.service.StudentService;
import com.shiva.service.TeacherService;
import com.shiva.service.UserService;

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
}
