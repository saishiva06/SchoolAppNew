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

import com.shiva.entity.ExamResults;
import com.shiva.entity.FeeDetails;
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
	@RequestMapping("/examResults")
	public ModelAndView loadExamsDashboard() throws Exception {
		List<ExamResults> examResultsList = examResultsService.getExamResultsMap();
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

	@RequestMapping("/addExamResults.do")
	public ModelAndView addExamResults(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
         try {
            String studentName = request.getParameter("studentName");
			String rollNo = request.getParameter("rollno");
			String studentClass = request.getParameter("StudentClass");
			String examTitle = request.getParameter("examTitle");
			String examDate = request.getParameter("examDate");
			String telugu1 = request.getParameter("telugu_1");
			String telugu2 = request.getParameter("telugu_2");
			String hindi1 = request.getParameter("hindi_1");
			String hindi2 = request.getParameter("hindi_2");
			String english1 = request.getParameter("english_1");
			String english2 = request.getParameter("english_2");
			String maths1 = request.getParameter("maths_1");
			String maths2 = request.getParameter("maths_2");
			String science1 = request.getParameter("science_1");
			String science2 = request.getParameter("science_2");
			String social1 = request.getParameter("social_1");
			String social2 = request.getParameter("social_2");
			String computers = request.getParameter("computers");
			String arts = request.getParameter("arts");
			String others = request.getParameter("others");
			String total = request.getParameter("total");
			String rank = request.getParameter("rank");
			String grade = request.getParameter("grade");
			
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date examDate1 = null;
			try {
				examDate1 = sdf.parse(examDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDate = output.format(examDate1);
			int result = examResultsService.createResult(rollNo, studentName, studentClass, examTitle, formattedDate, telugu1, telugu2, hindi1, hindi2, english1, english2, maths1, maths2, science1, science2, social1, social2, computers, arts, others, total, grade, rank);
			System.out.println("@@@ ExamResults added.........." + result);
			return new ModelAndView("redirect:examResults.do");
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("examResultsRegistration");
		}
	}
	@RequestMapping("/editExamResults.do")
	public ModelAndView editExamResults(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String examResultsId = request.getParameter("examResultsId");
		System.out.println("@@@ edit examResultsId.........."+ examResultsId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editExamResults");
		if (examResultsId != null && examResultsId.length()>0) {
			ExamResults examResults = examResultsService.getExamResultsById(examResultsId);
			SimpleDateFormat output = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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
	public ModelAndView loadExamResultsDashboard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String examResultsId = request.getParameter("examResultsId");
		System.out.println("@@@ delete examResultsId.........."+examResultsId);
		if (examResultsId != null && examResultsId.length()>0) {
			boolean status = examResultsService.deleteExamResults(examResultsId);
			System.out.println("@@@ status...."+status);
		}
		return new ModelAndView("redirect:examResults.do");
	}

	@RequestMapping("/updateExamResults.do")
	public ModelAndView updateExamResults(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			String examResultsId = request.getParameter("examResultsId");
			String studentName = request.getParameter("studentName");
			String rollNo = request.getParameter("rollno");
			String studentClass = request.getParameter("StudentClass");
			String examTitle = request.getParameter("examTitle");
			String examDate = request.getParameter("examDate");
			String telugu1 = request.getParameter("telugu_1");
			String telugu2 = request.getParameter("telugu_2");
			String hindi1 = request.getParameter("hindi_1");
			String hindi2 = request.getParameter("hindi_2");
			String english1 = request.getParameter("english_1");
			String english2 = request.getParameter("english_2");
			String maths1 = request.getParameter("maths_1");
			String maths2 = request.getParameter("maths_2");
			String science1 = request.getParameter("science_1");
			String science2 = request.getParameter("science_2");
			String social1 = request.getParameter("social_1");
			String social2 = request.getParameter("social_2");
			String computers = request.getParameter("computers");
			String arts = request.getParameter("arts");
			String others = request.getParameter("others");
			String total = request.getParameter("total");
			String rank = request.getParameter("rank");
			String grade = request.getParameter("grade");
			
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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


}
