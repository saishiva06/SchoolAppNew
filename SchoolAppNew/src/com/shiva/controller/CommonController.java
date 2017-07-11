package com.shiva.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.ExamResults;
import com.shiva.service.ExamResultsService;
import com.shiva.util.ExcelReader;

@Controller
public class CommonController {
	HttpSession session;
	private ExamResultsService examResultsService;

	public ExamResultsService getExamResultsService() {
		return examResultsService;
	}

	public void setExamResultsService(ExamResultsService examResultsService) {
		this.examResultsService = examResultsService;
	}
	@RequestMapping("/index")
	public ModelAndView loadIndex() throws Exception {
		return new ModelAndView("index");
	}

	@RequestMapping("/admin")
	public ModelAndView loadAdmin() throws Exception {
		return new ModelAndView("admin");
	}

	// for page display temporary @venu
	@RequestMapping("/noticeboard")
	public ModelAndView loadNoticeboard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		 String rollNo = request.getParameter("rollno");
		String studentClass = request.getParameter("StudentClass");
		String examType = request.getParameter("examType");
		List<ExamResults> examResultsList = examResultsService.getAllResultsBySearch(studentClass, rollNo,examType, "");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("noticeboard");
		if (examResultsList != null && examResultsList.size()!=0) {
			mav.addObject("examResultsData", examResultsList.get(0));
		}
		return mav;
	}

	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		session = request.getSession(false);
		if (session != null) {
			session.removeAttribute("user_name");
			session.invalidate();
		}
		System.out.println("@@@ Logout success...........");
		return new ModelAndView("redirect:index.do");
	}
	@RequestMapping("/errorPage")
	public ModelAndView loadErrorPage() throws Exception {
		return new ModelAndView("errorPage");
	}
	@RequestMapping("/about")
	public ModelAndView loadAboutPage() throws Exception {
		return new ModelAndView("about");
	}
	@RequestMapping("/contact")
	public ModelAndView loadContactPage() throws Exception {
		return new ModelAndView("contact");
	}
	
	@RequestMapping("/gallery")
	public ModelAndView loadGallery() throws Exception {
		return new ModelAndView("gallery");
	}
	@RequestMapping("/gallery-album")
	public ModelAndView loadGalleryAlbum() throws Exception {
		return new ModelAndView("gallery-album");
	}
	
	@RequestMapping("/team")
	public ModelAndView loadTeamPage() throws Exception {
		return new ModelAndView("team");
	}
	
}
