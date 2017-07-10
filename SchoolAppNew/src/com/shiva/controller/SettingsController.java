package com.shiva.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.News;
import com.shiva.service.SettingsService;
import com.shiva.service.UserService;

@Controller
public class SettingsController {
	HttpSession session;
    private UserService userService;
    private SettingsService settingsService;

	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public SettingsService getSettingsService() {
		return settingsService;
	}

	public void setSettingsService(SettingsService settingsService) {
		this.settingsService = settingsService;
	}

	/*@RequestMapping("/changePassword.do")
	public ModelAndView changePassword(HttpServletRequest request) throws Exception {
		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		String newPassword1 = request.getParameter("newPassword1");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("settings");
		session = request.getSession(false);
		String userName = (String) session.getAttribute("user_name");
		boolean alert = userService.authenticateUser(userName, oldPassword);
		if (alert) {
			if (newPassword.equals(newPassword1)) {
				userService.updatePassword(userName, newPassword);
			 mav.addObject("Msg", "password changed successfully");
		} else {
			 mav.addObject("Msg", "pasword update failed, please try again");
		}
	} else {
		 mav.addObject("Msg", "pasword update failed, please try again");
	}

	return mav;
  }*/
	
	@RequestMapping("/addComplaint.do")
	public ModelAndView addComplaint(HttpServletRequest request) throws Exception {
		String cbDate = "";
	    String perName = request.getParameter("name");
		String perPhone = request.getParameter("perPhone");
		String perEmail = request.getParameter("newPassword1");
		String message = request.getParameter("message");
		Date today = new Date();
		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
		cbDate = output.format(today);
        settingsService.addCompalint(0, perName, perPhone, perEmail, cbDate, message);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact");
		mav.addObject("Msg", "Your complaint registered");
	    return mav;
        }
	
	@RequestMapping("/newsDynamic.do")
	public ModelAndView newsDash(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addNews");
		return mav;
	}  
	
	@RequestMapping("/addNews.do")
	public ModelAndView addNews(HttpServletRequest request) throws Exception {
		String cbDate = "";
	    String news_headline = request.getParameter("news_headline");
		String news_desc = request.getParameter("news_desc");
		String other = request.getParameter("other");
		String newsDate = request.getParameter("newsDate");
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
		Date date1 = null;
		try {
			date1 = sdf.parse(newsDate);
		} catch (ParseException e) {
		}
		cbDate = output.format(date1);
        settingsService.addNews(0, news_headline, news_desc, other, cbDate);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addNews");
		mav.addObject("Msg", "News Updated");
	    return mav;
        }
	
	@RequestMapping("/news")
	public ModelAndView loadNewsSingle() throws Exception {
		return new ModelAndView("news");
	}
	
	
	@RequestMapping("/news-single")
	public ModelAndView loadNewsPage() throws Exception {
		List<News> newsData = settingsService.getAllNews();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("news-single");
		if (newsData != null && newsData.size()!=0) {
			mav.addObject("newsData", newsData);
		}
		return mav;
	}
}

