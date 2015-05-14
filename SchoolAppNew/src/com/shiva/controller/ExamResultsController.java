package com.shiva.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.service.ExamResultsService;

@Controller
public class ExamResultsController {
	
	private ExamResultsService examResultsService;
	
	

	public ExamResultsService getExamResultsService() {
		return examResultsService;
	}
	public void setExamResultsService(ExamResultsService examResultsService) {
		this.examResultsService = examResultsService;
	}
	@RequestMapping("/exams")
	public ModelAndView loadExamsDashboard() throws Exception {
		return new ModelAndView("exams");
	}
	@RequestMapping("/resultsEntry")
	public ModelAndView loadResultsEntryDashboard() throws Exception {
		return new ModelAndView("resultsEntry");
	}

}
