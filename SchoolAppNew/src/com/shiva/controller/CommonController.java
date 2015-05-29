package com.shiva.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.ExamResults;
import com.shiva.service.ExamResultsService;

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
		List<ExamResults> examResultsList = examResultsService.getAllResultsBySearch(studentClass, rollNo, "");
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
	@RequestMapping("/news")
	public ModelAndView loadNewsPage() throws Exception {
		return new ModelAndView("news");
	}
	@RequestMapping("/gallery")
	public ModelAndView loadGallery() throws Exception {
		return new ModelAndView("gallery");
	}
	@RequestMapping("/gallery-album")
	public ModelAndView loadGalleryAlbum() throws Exception {
		return new ModelAndView("gallery-album");
	}
	@RequestMapping("/news-single")
	public ModelAndView loadNewsSingle() throws Exception {
		return new ModelAndView("news-single");
	}
	@RequestMapping("/team")
	public ModelAndView loadTeamPage() throws Exception {
		return new ModelAndView("team");
	}
	
}
