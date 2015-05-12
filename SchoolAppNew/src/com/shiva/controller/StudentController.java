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

import com.shiva.entity.Student;
import com.shiva.service.StudentService;

@Controller
public class StudentController {
	
	private StudentService studentService;

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	@RequestMapping("/student")
	public ModelAndView loadStudentDashboard() throws Exception {
		List<Student> studentsList = studentService.getStudents();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("student");
		if (studentsList != null && studentsList.size() > 0) {
			mav.addObject("studentsData", studentsList);
		}
		return mav;
	}
	

	@RequestMapping("/studentRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("studentRegistration");
	}
	@RequestMapping("/addStudent.do")
	public ModelAndView addStudent(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {

			String studentFirstName = request.getParameter("studentFirstName");
			String studentLastName = request.getParameter("studentLastName");
			String studentClass = request.getParameter("studentClass");
			String section = request.getParameter("section");
			String medium = request.getParameter("medium");
			String studentFatherName = request.getParameter("studentFatherName");
			String studentMotherName = request.getParameter("studentMotherName");
			String studentDob = request.getParameter("studentDob");
			String caste = request.getParameter("caste");
			String religion = request.getParameter("religion");
			String phoneNumber = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");
			String fees = request.getParameter("fee");
			String dateOfJoinee = request.getParameter("dateOfJoinee");


			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			Date studentDob1 = null,studentDoj = null;
			try {
				studentDob1 = sdf.parse(studentDob);
				studentDoj = sdf.parse(dateOfJoinee);
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(studentDob1);
			String dateOfJoinee1 = output.format(studentDoj);
			int result = studentService.createStudent( studentFirstName, studentLastName,  studentClass,  section,  medium, studentFatherName, studentMotherName,  formattedDob,  caste,  religion, phoneNumber, village, gender, fees,  dateOfJoinee1,0);
			System.out.println("@@@ Student added..........");
			return new ModelAndView("redirect:student.do");
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("studentRegistration");
		}
	}
	@RequestMapping("/editStudent.do")
	public ModelAndView editStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String studentId = request.getParameter("rollno");
		System.out.println("@@@ edit studentId.........."+studentId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editStudent");
		if (studentId != null && studentId.length()>0) {
			Student student = studentService.getStudentById(studentId);
			SimpleDateFormat output = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date d = null,doj1 = null;
			try {
				d = sdf.parse(student.getDob());
				doj1 = sdf.parse(student.getDoj());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(d);
			String formattedDoj = output.format(doj1);
			student.setDob(formattedDob);
			student.setDoj(formattedDoj);
			mav.addObject("student", student);
		}
		return mav;
	}
	
	@RequestMapping("/deleteStudent.do")
	public ModelAndView loadStudentDashboard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String studentId = request.getParameter("rollno");
		System.out.println("@@@ delete studentId.........."+studentId);
		if (studentId != null && studentId.length()>0) {
			boolean status = studentService.deleteStudent(studentId);
			System.out.println("@@@ status...."+status);
		}
		return new ModelAndView("redirect:student.do");
	}

	@RequestMapping("/updateStudent.do")
	public ModelAndView updateStudent(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			String rollnum = request.getParameter("rollno");
			String studentFirstName = request.getParameter("studentFirstName");
			String studentLastName = request.getParameter("studentLastName");
			String studentClass = request.getParameter("studentClass");
			String section = request.getParameter("section");
			String medium = request.getParameter("medium");
			String studentFatherName = request.getParameter("studentFatherName");
			String studentMotherName = request.getParameter("studentMotherName");
			String studentDob = request.getParameter("dob");
			String caste = request.getParameter("caste");
			String religion = request.getParameter("religion");
			String phoneNumber = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");
			String fees = request.getParameter("fee");
			String dateOfJoinee = request.getParameter("dateOfJoinee");
            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date studentDob1 = null,studentDoj = null;
			try {
				studentDob1 = sdf.parse(studentDob);
				studentDoj = sdf.parse(dateOfJoinee);
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(studentDob1);
			String dateOfJoinee1 = output.format(studentDoj);
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("roll_num", rollnum);
			paramsMap.put("student_fisrt_name", studentFirstName);
			paramsMap.put("student_last_name", studentLastName);
			paramsMap.put("student_class", studentClass);
			paramsMap.put("section", section);
			paramsMap.put("medium", medium);
			paramsMap.put("student_father_name", studentFatherName);
			paramsMap.put("student_mother_name", studentMotherName);
			paramsMap.put("student_dob", formattedDob);
			paramsMap.put("student_caste", caste);
			paramsMap.put("student_religion", religion);
			paramsMap.put("student_phone_num", phoneNumber);
			paramsMap.put("student_village", village);
			paramsMap.put("student_gender", gender);
			paramsMap.put("student_doj", dateOfJoinee1);
			paramsMap.put("fees", fees);
			paramsMap.put("student_status", 0);
		    int result = studentService.updateStudent(paramsMap);
			System.out.println("@@@ Student updated..........");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:student.do");
	}
}
