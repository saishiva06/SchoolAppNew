package com.shiva.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.service.StudentService;
import com.shiva.service.TeacherService;
import com.shiva.service.UserService;

@Controller
public class LoginController {

	HttpSession session;

	private UserService userService;
	private StudentService studentService;
	private TeacherService teacherService;


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
	@RequestMapping("/login.do")
	public ModelAndView checkLogin(HttpServletRequest request) throws Exception {
		String userName = request.getParameter("teachername");
		String userPassword = request.getParameter("teacherpass");
		if (userName != null && userName.length() > 0 && userPassword != null
				&& userPassword.length() > 0) {
			boolean loginStatus = userService.authenticateUser(userName,
					userPassword);
			if (loginStatus) {
				System.out.println("@@@ Login success...........");
				session = request.getSession(true);
				session.setAttribute("user_name", userName);
				return new ModelAndView("redirect:dashboard.do");
			} else {
				System.out.println("@@@ Login failure...........");
				return new ModelAndView("redirect:index.do");
			}
		} else {
			return new ModelAndView("redirect:index.do");
		}
	}

}
