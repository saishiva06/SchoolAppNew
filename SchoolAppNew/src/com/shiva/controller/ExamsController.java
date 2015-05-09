package com.shiva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExamsController {

	@RequestMapping("/exams")
	public ModelAndView loadExamsDashboard() throws Exception {
		return new ModelAndView("exams");
	}

}
