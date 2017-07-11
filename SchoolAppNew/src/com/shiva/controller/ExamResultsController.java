package com.shiva.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.ExamResults;
import com.shiva.service.ExamResultsService;
import com.shiva.service.StudentService;
import com.shiva.util.ExcelReader;
import com.shiva.util.SendSms;

@Controller
public class ExamResultsController {

	private ExamResultsService examResultsService;
	private StudentService studentService;

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	public ExamResultsService getExamResultsService() {
		return examResultsService;
	}

	public void setExamResultsService(ExamResultsService examResultsService) {
		this.examResultsService = examResultsService;
	}

	@RequestMapping("/examResults")
	public ModelAndView loadExamsDashboard() throws Exception {
		List<ExamResults> examResultsList = examResultsService
				.getExamResultsMap();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("examResults");
		if (examResultsList != null && examResultsList.size() > 0) {
			mav.addObject("examResultsData", examResultsList);
		}
		return mav;
	}

	@RequestMapping("/examResultsRegistration")
	public ModelAndView loadResultsEntryDashboard() throws Exception {
		return new ModelAndView("examResultsRegistration");
	}
	@RequestMapping("/examResultsReg123")
	public ModelAndView loadexamResultsReg123Dashboard() throws Exception {
		return new ModelAndView("examResultsReg123");
	}
	@RequestMapping("/examResultsReg4567")
	public ModelAndView loadexamResultsReg4567Dashboard() throws Exception {
		return new ModelAndView("examResultsReg4567");
	}

	@RequestMapping("/addExamResults.do")
	public ModelAndView addExamResults(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int telugu1=0,hindi1=0,english1=0,maths1=0,science1=0,social1=0,computers=0,arts=0;
		int telugu2=0,hindi2=0,english2=0,maths2=0,science2=0,social2=0;
		String studentClass = "";
		try {
			String rollNo = request.getParameter("rollno");
			String studentName = request.getParameter("studentName");
			studentClass = request.getParameter("StudentClass");
			String examTitle = request.getParameter("examTitle");
			String examDate = request.getParameter("examDate");
			if (studentClass.equalsIgnoreCase("1st class") || studentClass.equalsIgnoreCase("2nd class") || studentClass.equalsIgnoreCase("3rd class")) {
				 telugu1 = Integer.parseInt(request.getParameter("telugu_1").length() != 0 ? request.getParameter("telugu_1") : "0");
				 hindi1 = Integer.parseInt(request.getParameter("hindi_1").length() != 0 ? request.getParameter("hindi_1") : "0");
				 english1 = Integer.parseInt(request.getParameter("english_1").length() != 0 ? request.getParameter("english_1") : "0");
				 maths1 = Integer.parseInt(request.getParameter("maths_1").length() != 0 ? request.getParameter("maths_1") : "0");
				 science1 = Integer.parseInt(request.getParameter("science_1").length() != 0 ? request.getParameter("science_1") : "0");
				 computers = Integer.parseInt(request.getParameter("computers").length() != 0 ? request.getParameter("computers") : "0");
				 arts = Integer.parseInt(request.getParameter("arts").length() != 0 ? request.getParameter("arts") : "0");
			}   else if (studentClass.equalsIgnoreCase("4th class") || studentClass.equalsIgnoreCase("5th class") || studentClass.equalsIgnoreCase("6th class") || studentClass.equalsIgnoreCase("7th class")) {
				 telugu1 = Integer.parseInt(request.getParameter("telugu_1").length() != 0 ? request.getParameter("telugu_1") : "0");
				 hindi1 = Integer.parseInt(request.getParameter("hindi_1").length() != 0 ? request.getParameter("hindi_1") : "0");
				 english1 = Integer.parseInt(request.getParameter("english_1").length() != 0 ? request.getParameter("english_1") : "0");
				 maths1 = Integer.parseInt(request.getParameter("maths_1").length() != 0 ? request.getParameter("maths_1") : "0");
				 science1 = Integer.parseInt(request.getParameter("science_1").length() != 0 ? request.getParameter("science_1") : "0");
				 social1 = Integer.parseInt(request.getParameter("social_1").length() != 0 ? request.getParameter("social_1") : "0");
				 computers = Integer.parseInt(request.getParameter("computers").length() != 0 ? request.getParameter("computers") : "0");
			} else if (studentClass.equalsIgnoreCase("8th class") || studentClass.equalsIgnoreCase("9th class") || studentClass.equalsIgnoreCase("SSC")) {
				 telugu1 = Integer.parseInt(request.getParameter("telugu_1").length() != 0 ? request.getParameter("telugu_1") : "0");
				 hindi1 = Integer.parseInt(request.getParameter("hindi_1").length() != 0 ? request.getParameter("hindi_1") : "0");
				 english1 = Integer.parseInt(request.getParameter("english_1").length() != 0 ? request.getParameter("english_1") : "0");
				 maths1 = Integer.parseInt(request.getParameter("maths_1").length() != 0 ? request.getParameter("maths_1") : "0");
				 science1 = Integer.parseInt(request.getParameter("science_1").length() != 0 ? request.getParameter("science_1") : "0");
				 science2 = Integer.parseInt(request.getParameter("science_2").length() != 0 ? request.getParameter("science_2") : "0");
				 social1 = Integer.parseInt(request.getParameter("social_1").length() != 0 ? request.getParameter("social_1") : "0");
				 computers = Integer.parseInt(request.getParameter("computers").length() != 0 ? request.getParameter("computers") : "0");
			}
			
			int others = Integer.parseInt(request.getParameter("others").length() != 0 ? request.getParameter("others") : "0");
			int total = Integer.parseInt(request.getParameter("total").length() != 0 ? request.getParameter("total") : "0");
			int rank = Integer.parseInt(request.getParameter("rank").length() != 0 ? request.getParameter("rank") : "0");
			String grade = request.getParameter("grade");
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date examDate1 = null;
			try {
				examDate1 = sdf.parse(examDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDate = output.format(examDate1);
			int result = examResultsService.createResult(rollNo, studentName,
					studentClass, examTitle, formattedDate, telugu1, telugu2,
					hindi1, hindi2, english1, english2, maths1, maths2,
					science1, science2, social1, social2, computers, arts,
					others, total, grade, rank);
			System.out.println("@@@ ExamResults added.........." + result);
			return new ModelAndView("redirect:examResults.do");
		} catch (Exception e) {
			e.printStackTrace();
			if (studentClass.equalsIgnoreCase("1st class") || studentClass.equalsIgnoreCase("2nd class") || studentClass.equalsIgnoreCase("3rd class")) {
			return new ModelAndView("examResultsReg123");
			}   else if (studentClass.equalsIgnoreCase("4th class") || studentClass.equalsIgnoreCase("5th class") || studentClass.equalsIgnoreCase("6th class") || studentClass.equalsIgnoreCase("7th class")) {
				return new ModelAndView("examResultsReg4567");
			} else if (studentClass.equalsIgnoreCase("8th class") || studentClass.equalsIgnoreCase("9th class") || studentClass.equalsIgnoreCase("SSC")) {
					return new ModelAndView("examResultsRegistration");
			}	else {
				return new ModelAndView("redirect:examResults.do");
			}
		}
	}

	@RequestMapping("/editExamResults.do")
	public ModelAndView editExamResults(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String examResultsId = request.getParameter("examResultsId");
		System.out.println("@@@ edit examResultsId.........." + examResultsId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editExamResults");
		if (examResultsId != null && examResultsId.length() > 0) {
			ExamResults examResults = examResultsService
					.getExamResultsById(examResultsId);
			SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date examDate = null;
			try {
				examDate = sdf.parse(examResults.getExamDate());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedExamDate = output.format(examDate);
			examResults.setExamDate(formattedExamDate);
			mav.addObject("examResults", examResults);
		}
		return mav;
	}

	@RequestMapping("/deleteExamResults.do")
	public ModelAndView loadExamResultsDashboard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String examResultsId = request.getParameter("examResultsId");
		System.out
				.println("@@@ delete examResultsId.........." + examResultsId);
		if (examResultsId != null && examResultsId.length() > 0) {
			boolean status = examResultsService
					.deleteExamResults(examResultsId);
			System.out.println("@@@ status...." + status);
		}
		return new ModelAndView("redirect:examResults.do");
	}

	@RequestMapping("/updateExamResults.do")
	public ModelAndView updateExamResults(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			int telugu1=0,hindi1=0,english1=0,maths1=0,science1=0,social1=0,computers=0,arts=0;
			int telugu2=0,hindi2=0,english2=0,maths2=0,science2=0,social2=0;
			String examResultsId = request.getParameter("examResultsId");
			String studentName = request.getParameter("studentName");
			String rollNo = request.getParameter("rollno");
			String studentClass = request.getParameter("StudentClass");
			String examTitle = request.getParameter("examTitle");
			String examDate = request.getParameter("examDate");
			if (studentClass.equalsIgnoreCase("1st class") || studentClass.equalsIgnoreCase("2nd class") || studentClass.equalsIgnoreCase("3rd class")) {
				 telugu1 = Integer.parseInt(request.getParameter("telugu_1").length() != 0 ? request.getParameter("telugu_1") : "0");
				 hindi1 = Integer.parseInt(request.getParameter("hindi_1").length() != 0 ? request.getParameter("hindi_1") : "0");
				 english1 = Integer.parseInt(request.getParameter("english_1").length() != 0 ? request.getParameter("english_1") : "0");
				 maths1 = Integer.parseInt(request.getParameter("maths_1").length() != 0 ? request.getParameter("maths_1") : "0");
				 science1 = Integer.parseInt(request.getParameter("science_1").length() != 0 ? request.getParameter("science_1") : "0");
				 computers = Integer.parseInt(request.getParameter("computers").length() != 0 ? request.getParameter("computers") : "0");
				 arts = Integer.parseInt(request.getParameter("arts").length() != 0 ? request.getParameter("arts") : "0");
			}   else if (studentClass.equalsIgnoreCase("4th class") || studentClass.equalsIgnoreCase("5th class") || studentClass.equalsIgnoreCase("6th class") || studentClass.equalsIgnoreCase("7th class")) {
				 telugu1 = Integer.parseInt(request.getParameter("telugu_1").length() != 0 ? request.getParameter("telugu_1") : "0");
				 hindi1 = Integer.parseInt(request.getParameter("hindi_1").length() != 0 ? request.getParameter("hindi_1") : "0");
				 english1 = Integer.parseInt(request.getParameter("english_1").length() != 0 ? request.getParameter("english_1") : "0");
				 maths1 = Integer.parseInt(request.getParameter("maths_1").length() != 0 ? request.getParameter("maths_1") : "0");
				 science1 = Integer.parseInt(request.getParameter("science_1").length() != 0 ? request.getParameter("science_1") : "0");
				 social1 = Integer.parseInt(request.getParameter("social_1").length() != 0 ? request.getParameter("social_1") : "0");
				 computers = Integer.parseInt(request.getParameter("computers").length() != 0 ? request.getParameter("computers") : "0");
			} else if (studentClass.equalsIgnoreCase("8th class") || studentClass.equalsIgnoreCase("9th class") || studentClass.equalsIgnoreCase("SSC")) {
				 telugu1 = Integer.parseInt(request.getParameter("telugu_1").length() != 0 ? request.getParameter("telugu_1") : "0");
				 hindi1 = Integer.parseInt(request.getParameter("hindi_1").length() != 0 ? request.getParameter("hindi_1") : "0");
				 english1 = Integer.parseInt(request.getParameter("english_1").length() != 0 ? request.getParameter("english_1") : "0");
				 maths1 = Integer.parseInt(request.getParameter("maths_1").length() != 0 ? request.getParameter("maths_1") : "0");
				 science1 = Integer.parseInt(request.getParameter("science_1").length() != 0 ? request.getParameter("science_1") : "0");
				 science2 = Integer.parseInt(request.getParameter("science_2").length() != 0 ? request.getParameter("science_2") : "0");
				 social1 = Integer.parseInt(request.getParameter("social_1").length() != 0 ? request.getParameter("social_1") : "0");
				 computers = Integer.parseInt(request.getParameter("computers").length() != 0 ? request.getParameter("computers") : "0");
			}
			int others = Integer.parseInt(request.getParameter("others").length() != 0 ? request.getParameter("others") : "0");
			int total = Integer.parseInt(request.getParameter("total").length() != 0 ? request.getParameter("total") : "0");
			int rank = Integer.parseInt(request.getParameter("rank").length() != 0 ? request.getParameter("rank") : "0");
			String grade = request.getParameter("grade");

			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date examDate1 = null;
			try {
				examDate1 = sdf.parse(examDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDate = output.format(examDate1);
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("exam_results_id", examResultsId);
			paramsMap.put("roll_num", rollNo);
			paramsMap.put("student_name", studentName);
			paramsMap.put("student_class", studentClass);
			paramsMap.put("exam_title", examTitle);
			paramsMap.put("exam_date", formattedDate);
			paramsMap.put("telugu_1", telugu1);
			paramsMap.put("telugu_2", telugu2);
			paramsMap.put("hindi_1", hindi1);
			paramsMap.put("hindi_2", hindi2);
			paramsMap.put("english_1", english1);
			paramsMap.put("english_2", english2);
			paramsMap.put("maths_1", maths1);
			paramsMap.put("maths_2", maths2);
			paramsMap.put("science_1", science1);
			paramsMap.put("science_2", science2);
			paramsMap.put("social_1", social1);
			paramsMap.put("social_2", social2);
			paramsMap.put("computers", computers);
			paramsMap.put("arts", arts);
			paramsMap.put("others", others);
			paramsMap.put("total", total);
			paramsMap.put("rank", rank);
			paramsMap.put("grade", grade);
			int result = examResultsService.updateResults(paramsMap);
			System.out.println("@@@ ExamResults updated.........." + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:examResults.do");
	}

	@RequestMapping("/sendResultsSms.do")
	public ModelAndView sendResultsSms(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String examResultsId = request.getParameter("examResultsId");
		System.out.println("@@@ sending alert for .........." + examResultsId);
		if (examResultsId != null && examResultsId.length() > 0) {
			ExamResults examResults = examResultsService.getExamResultsById(examResultsId);
			
			String message= "Your Student " + examResults.getStudentName() + "(" + examResults.getRollNum() + ") got grade - "+ examResults.getGrade() + " and Rank is " +examResults.getRank() + " In latest "+ examResults.getExamTitle() + " exams. Please visit our webisite to know complete list of marks. Thank you";
			String recipient = studentService.getStudentById(examResults.getRollNum()).getPhoneNumber(); 
			SendSms.sendSms(recipient,message);
		}
		return new ModelAndView("redirect:examResults.do");
	}
	
	@RequestMapping("/viewExamResults.do")
	public ModelAndView viewExamResults(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String examResultsId = request.getParameter("examResultsId");
		System.out.println("@@@ view examResultsId.........." + examResultsId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewExamResults");
		if (examResultsId != null && examResultsId.length() > 0) {
			ExamResults examResults = examResultsService
					.getExamResultsById(examResultsId);
			SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date examDate = null;
			try {
				examDate = sdf.parse(examResults.getExamDate());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedExamDate = output.format(examDate);
			examResults.setExamDate(formattedExamDate);
			mav.addObject("examResults", examResults);
		}
		return mav;
	}
	
	@RequestMapping("/uploadFile.do")
	public ModelAndView uploadFilePage() throws Exception {
		return new ModelAndView("uploadFile");
	}
	
	@RequestMapping("/uploadFileProcess.do")
	public ModelAndView uploadFile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileType = "";
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (!isMultipart) {
			return new ModelAndView("uploadFile");
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		Date today = new Date();
		String filePath = "";
        String uploadFolder = "D:/backup";
        String studentClass = request.getParameter("studentClass");
		String examTitle = request.getParameter("examTitle");
		String subject = request.getParameter("subject");
		String examDate = request.getParameter("uploadDate");
	    ServletFileUpload upload = new ServletFileUpload(factory);
	    try {
			File uploadedFile =  null;
			List<FileItem> items = upload.parseRequest(request);
			Iterator<FileItem> iterator = items.iterator();
			while (iterator.hasNext()) {
				FileItem item = (FileItem) iterator.next();
				if (!item.isFormField()) {
					String Name = new File(item.getName()).getName();
					String filenamewithoutext = FilenameUtils.removeExtension(Name);
					String ext = FilenameUtils.getExtension(Name);
					String fileName = filenamewithoutext + "_" + dateFormat.format(today) + "_" + "1234" + "." + ext;
					 filePath = uploadFolder + File.separator + fileName;
					 uploadedFile = new File(filePath);
					item.write(uploadedFile);
					if (fileName.endsWith(".xls")) {
						fileType = "xls";
					} else if (fileName.endsWith(".xlsx")) {
						fileType = "xlsx";
					}
				} else {
					 String fieldname = item.getFieldName();
				     String fieldvalue = item.getString();
				    if (fieldname.equals("studentClass")) {
				    	 studentClass = fieldvalue;
				        } else if (fieldname.equals("examTitle")) {
				        	examTitle = fieldvalue;
				        }  else if (fieldname.equals("subject")) {
				        	subject = fieldvalue;
				        } else if (fieldname.equals("uploadDate")) {
				        	examDate = fieldvalue;
				        }
				}
			}
			ExcelReader.insertMarks(fileType,filePath,subject,studentClass, examTitle, examDate);
			uploadedFile.delete();	 
		}  catch (Exception e) {
			
		}
		return new ModelAndView("uploadFile");
	}

}
