package com.shiva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FeeDetailsController {

	@RequestMapping("/feeDetails")
	public ModelAndView loadFeeDetailsDashboard() throws Exception {
		return new ModelAndView("feeDetails");
	}
	
	@RequestMapping("/feeRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("feeRegistration");
	}
}
