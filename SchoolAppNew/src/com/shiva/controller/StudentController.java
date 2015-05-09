package com.shiva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	@RequestMapping("/student")
	public ModelAndView loadStudentDashboard() throws Exception {
		return new ModelAndView("student");
	}

	@RequestMapping("/studentRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("studentRegistration");
	}
}
