package com.shiva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

	@RequestMapping("/dashboard")
	public ModelAndView loadDashboard() throws Exception {
		return new ModelAndView("dashboard");
	}

}
