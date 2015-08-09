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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.Student;
import com.shiva.service.StudentService;
import com.shiva.util.RandomGenerator;
import com.shiva.util.SendSms;

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
			String studentFatherName = request
					.getParameter("studentFatherName");
			String studentMotherName = request
					.getParameter("studentMotherName");
			String studentDob = request.getParameter("studentDob");
			String caste = request.getParameter("caste");
			String subCaste = request.getParameter("subCaste");
			String religion = request.getParameter("religion");
			String phoneNumber = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");
			String fees = request.getParameter("fee");
			String dateOfJoinee = request.getParameter("studentDoj");
			String mole = request.getParameter("mole");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date studentDob1 = null, studentDoj = null;
			try {
				studentDob1 = sdf.parse(studentDob);
				studentDoj = sdf.parse(dateOfJoinee);

			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String LastRollNo = studentService.getLastRecordRollNum(studentClass);
			String lastAdmsnNum = studentService.getLastRecordAdmNum();
	        String admissionNo   = RandomGenerator.getAdmissionNum(studentClass, lastAdmsnNum!=null ? lastAdmsnNum : "0");
	        String  rollNum = RandomGenerator.getRollNum(studentClass, LastRollNo!=null ? LastRollNo : "");
			String formattedDob = output.format(studentDob1);
			String dateOfJoinee1 = output.format(studentDoj);
			int result = studentService.createStudent(rollNum,admissionNo,
					studentFirstName, studentLastName, studentClass, section,
					medium, studentFatherName, studentMotherName, formattedDob,
					caste, subCaste,religion, phoneNumber, village, gender, fees,
					dateOfJoinee1, 0,mole);
			System.out.println("@@@ Student added.........." + result);
			String message= "Thank you for joining in Sri Narayana schools. Student " + studentFirstName + " " +studentLastName + " joined in " + studentClass + " and medium is "+ medium +" succesfully. And Admission number is " + admissionNo +" ";
			String recipient = request.getParameter("mobileNo");
			SendSms.sendSms(recipient,message);
			return new ModelAndView("redirect:student.do");
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("studentRegistration");
		}
	}

	@RequestMapping("/editStudent.do")
	public ModelAndView editStudent(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String studentId = request.getParameter("sno");
		System.out.println("@@@ edit studentId.........." + studentId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editStudent");
		if (studentId != null && studentId.length() > 0) {
			Student student = studentService.getStudentById(studentId);
			SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date d = null, doj1 = null;
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

	@RequestMapping("/viewStudent.do")
	public ModelAndView viewStudent(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String studentId = request.getParameter("sno");
		System.out.println("@@@ view studentId.........." + studentId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewStudent");
		if (studentId != null && studentId.length() > 0) {
			Student student = studentService.getStudentById(studentId);
			SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date d = null, doj1 = null;
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
	public ModelAndView loadStudentDashboard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String studentId = request.getParameter("sno");
		System.out.println("@@@ delete studentId.........." + studentId);
		if (studentId != null && studentId.length() > 0) {
			boolean status = studentService.deleteStudent(studentId);
			System.out.println("@@@ status...." + status);
		}
		return new ModelAndView("redirect:student.do");
	}

	@RequestMapping("/updateStudent.do")
	public ModelAndView updateStudent(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			String sNo = request.getParameter("sno");
			String admissionNum = request.getParameter("admissionNo");
			String rollnum = request.getParameter("rollno");
			String studentFirstName = request.getParameter("studentFirstName");
			String studentLastName = request.getParameter("studentLastName");
			String studentClass = request.getParameter("studentClass");
			String section = request.getParameter("section");
			String medium = request.getParameter("medium");
			String studentFatherName = request
					.getParameter("studentFatherName");
			String studentMotherName = request
					.getParameter("studentMotherName");
			String studentDob = request.getParameter("studentDob");
			String caste = request.getParameter("caste");
			String subCaste = request.getParameter("subCaste");
			String religion = request.getParameter("religion");
			String phoneNumber = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");
			String fees = request.getParameter("fee");
			String dateOfJoinee = request.getParameter("studentDoj");
			String mole = request.getParameter("mole");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date studentDob1 = null, studentDoj = null;
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
			paramsMap.put("s_no", sNo);
			paramsMap.put("roll_num", rollnum);
			paramsMap.put("admission_num", admissionNum);
			paramsMap.put("student_fisrt_name", studentFirstName);
			paramsMap.put("student_last_name", studentLastName);
			paramsMap.put("student_class", studentClass);
			paramsMap.put("section", section);
			paramsMap.put("medium", medium);
			paramsMap.put("student_father_name", studentFatherName);
			paramsMap.put("student_mother_name", studentMotherName);
			paramsMap.put("student_dob", formattedDob);
			paramsMap.put("student_caste", caste);
			paramsMap.put("sub_caste", subCaste);
			paramsMap.put("student_religion", religion);
			paramsMap.put("student_phone_num", phoneNumber);
			paramsMap.put("student_village", village);
			paramsMap.put("student_gender", gender);
			paramsMap.put("student_doj", dateOfJoinee1);
			paramsMap.put("fees", fees);
			paramsMap.put("student_moles", mole);
			paramsMap.put("student_status", 0);
			int result = studentService.updateStudent(paramsMap);
			System.out.println("@@@ Student updated.........." + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:student.do");
	}
	
	@RequestMapping(value = "/getStudentDetailsForAdmNum.do", method = RequestMethod.GET)
	@ResponseBody
	public Student getStudentDetailsForAdmNum(@RequestParam("rollno") String  rollno)throws Exception {
		Student student = studentService.getStudentByAdmissionNum(rollno);
		return student!=null ? student : null;
	}

	@RequestMapping(value = "/getStudentDetailsForRollNum.do", method = RequestMethod.GET)
	@ResponseBody
	public Student getStudentDetailsForRollNum(@RequestParam("rollno") String  rollno)throws Exception {
		Student student = studentService.getStudentByRollNum(rollno);
		return student!=null ? student : null;
	}
	
	@RequestMapping("/viewAllStudents")
	public ModelAndView loadAllStudentDashboard() throws Exception {
		List<Student> studentsList = studentService.getStudents();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewAllStudents");
		if (studentsList != null && studentsList.size() > 0) {
			mav.addObject("studentsData", studentsList);
		}
		return mav;
	}
}
