package com.shiva.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.service.SettingsService;
import com.shiva.service.UserService;

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

	@RequestMapping("/changePassword.do")
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
  }
	
	@RequestMapping("/addComplaint.do")
	public ModelAndView addComplaint(HttpServletRequest request) throws Exception {
		String cbDate = "";
	    String perName = request.getParameter("name");
		String perPhone = request.getParameter("perPhone");
		String perEmail = request.getParameter("newPassword1");
		String message = request.getParameter("message");
		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
		cbDate = output.format(new Date());
        settingsService.addCompalint(0, perName, perPhone, perEmail, cbDate, message);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact.do");
		mav.addObject("Msg", "Your complaint registered");
	    return mav;
        }
}

