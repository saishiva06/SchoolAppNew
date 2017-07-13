package com.shiva.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
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
	
	@RequestMapping("/addImages")
	public ModelAndView loadImagesUploadDash(HttpServletRequest request) throws Exception {
		System.out.println(request.getSession().getServletContext().getRealPath("assets"));
		return new ModelAndView("addImages");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/uploadimage")
	public ModelAndView saveImages(HttpServletRequest request) throws Exception {
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addImages");
		if (!isMultipart) {
	    	mav.addObject("Msg", "Some Thing Went Wrong Please Try Again");
			return mav;
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();
		String filePath = "";
        String imagePage = request.getParameter("imgviewNum");
		String imgviewNum = request.getParameter("imgviewNum");
		ServletFileUpload upload = new ServletFileUpload(factory);
	    try {
			File uploadedFile =  null;
			List<FileItem> items = upload.parseRequest(request);
			Iterator<FileItem> iterator = items.iterator();
			while (iterator.hasNext()) {
				FileItem item = (FileItem) iterator.next();
				if (item.isFormField()) {
					String fieldname = item.getFieldName();
				     String fieldvalue = item.getString();
				    if (fieldname.equals("imagePage")) {
				    	imagePage = fieldvalue;
				        } else if (fieldname.equals("imgviewNum")) {
				        	imgviewNum = fieldvalue;
				        } 
				}
			}
			String appPath = request.getSession().getServletContext().getRealPath("assets") + "/images/" +imagePage;
			Iterator<FileItem> iterator1 = items.iterator();
			
			while (iterator1.hasNext()) {
				FileItem item = (FileItem) iterator1.next();
				if (!item.isFormField()) {
					String Name = new File(item.getName()).getName();
					String ext = FilenameUtils.getExtension(Name);
					String fileName = imagePage + "_" + imgviewNum  + "." + ext;
					filePath = appPath + File.separator + fileName;
					uploadedFile = new File(filePath);
					item.write(uploadedFile);
				} 
			}
		}  catch (Exception e) {
			mav.addObject("Msg", "Some Thing Went Wrong Please Try Again");
			return mav;
		}
	    mav.addObject("Msg", "SuccessFully uploaded image");
	    return mav;
	}
	
}

