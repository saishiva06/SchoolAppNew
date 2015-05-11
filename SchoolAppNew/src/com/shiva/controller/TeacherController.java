package com.shiva.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.Teacher;
import com.shiva.service.TeacherService;
import com.shiva.util.RandomGenerator;

@Controller
public class TeacherController {

	private TeacherService teacherService;

	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	@RequestMapping("/teacher")
	public ModelAndView loadTeacherDashboard() throws Exception {
		List<Teacher> teachers = teacherService.getTeachers();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("teacher");
		if (teachers != null && teachers.size() > 0) {
			mav.addObject("teachersData", teachers);
		}
		return mav;
	}

	@RequestMapping("/teacherRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("teacherRegistration");
	}

	@RequestMapping("/addTeacher.do")
	public ModelAndView addTeacher(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {

			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String qualification = request.getParameter("qualification");
			String subject = request.getParameter("subject");
			String experience = request.getParameter("experience");
			String dob = request.getParameter("dob");
			String caste = request.getParameter("caste");
			String mobileNo = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");
            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			Date d = null;
			try {
				d = sdf.parse(dob);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(d);

			int result = teacherService.createTeacher(
					RandomGenerator.getTeacherId(), firstName, lastName,
					qualification, experience, subject, formattedDob, caste,
					mobileNo, village, gender, new Date(), 1);
			System.out.println("@@@ Teacher added..........");
			return new ModelAndView("redirect:teacher.do");
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("teacherRegistration");
		}
	}
	@RequestMapping("/editTeacher.do")
	public ModelAndView editTeacher(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String teacherId = request.getParameter("teacher_id");
		System.out.println("@@@ edit teacherId.........."+teacherId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editTeacher");
		if (teacherId != null && teacherId.length()>0) {
			Teacher teacher = teacherService.getTeacherById(teacherId);
			teacher.setReligion("");
			SimpleDateFormat output = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			Date d = null;
			try {
				d = sdf.parse(teacher.getDob());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(d);
			teacher.setDob(formattedDob);
			System.out.println("@@@ id..."+teacher.getTeacherId());
			mav.addObject("teacher", teacher);
		}
		return mav;
	}
	
	@RequestMapping("/deleteTeacher.do")
	public ModelAndView loadStudentDashboard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String teacherId = request.getParameter("teacher_id");
		System.out.println("@@@ delete teacherId.........."+teacherId);
		if (teacherId != null && teacherId.length()>0) {
			boolean status = teacherService.deleteTeacher(teacherId);
			System.out.println("@@@ status...."+status);
		}
		return new ModelAndView("redirect:teacher.do");
	}

	@RequestMapping("/updateTeacher.do")
	public ModelAndView updateTeacher(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			String teacherId = request.getParameter("teacher_id");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String qualification = request.getParameter("qualification");
			String subject = request.getParameter("subject");
			String experience = request.getParameter("experience");
			String dob = request.getParameter("dob");
			String caste = request.getParameter("caste");
			String religion = request.getParameter("religion");
			String mobileNo = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");

			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			Date d = null;
			try {
				d = sdf.parse(dob);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(d);
			
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("teacher_id", teacherId);
			paramsMap.put("teacher_fisrt_name", firstName);
			paramsMap.put("teacher_last_name", lastName);
			paramsMap.put("teacher_qualification", qualification);
			paramsMap.put("teacher_exp", experience);
			paramsMap.put("teacher_subject", subject);
			paramsMap.put("teacher_dob", formattedDob);
			paramsMap.put("teacher_caste", caste);
			paramsMap.put("teacher_phone_num", mobileNo);
			paramsMap.put("teacher_village", village);
			paramsMap.put("teacher_gender", gender);
			paramsMap.put("teacher_doj", new Date());
			paramsMap.put("teacher_status", 1);
		
			int result = teacherService.updateTeacher(paramsMap);
			System.out.println("@@@ Teacher updated..........");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:teacher.do");
	}
}
