package com.shiva.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.service.UserService;

@Controller
public class LoginController {
	
	HttpSession session;
	
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/index")
	public ModelAndView loadIndex() throws Exception {
		return new ModelAndView("index");
	}

	@RequestMapping("/admin")
	public ModelAndView loadAdmin() throws Exception {
		return new ModelAndView("admin");
	}
	
	//for page display temporary @venu     
	@RequestMapping("/noticeboard")
	public ModelAndView loadNoticeboard() throws Exception {
		return new ModelAndView("noticeboard");
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
				return new ModelAndView("dashboard");
			} else {
				System.out.println("@@@ Login failure...........");
				return new ModelAndView("redirect:index.do");
			}
		} else {
			return new ModelAndView("redirect:index.do");
		}
	}
}
