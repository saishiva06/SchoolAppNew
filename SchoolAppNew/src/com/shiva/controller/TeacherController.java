package com.shiva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TeacherController {

	@RequestMapping("/teacher")
	public ModelAndView loadTeacherDashboard() throws Exception {
		return new ModelAndView("teacher");
	}

	@RequestMapping("/teacherRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("teacherRegistration");
	}
}
