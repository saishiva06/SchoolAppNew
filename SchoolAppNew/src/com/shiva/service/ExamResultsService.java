package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.entity.ExamResults;

public interface ExamResultsService {
	
	          int createResult(String rollno, String studentName,String studentClass, String examTtile, 
	       		   String examDate, String telugu1,String telugu2,String hindi1, 
	    		   String hindi2, String english1, String english2,String maths1,String maths2,String science1, 
	    		   String science2,String social1,String social2,String computers,String arts,String others,
	    		   String total,String grade,String rank);
			 int updateResults(Map<String, Object> ExamResultsMap);
			 List<ExamResults>  getExamResultsMap();
			 List<ExamResults>  getAllResultsBySearch(String studentsClass,String rollNum, String studentName);
			 boolean deleteExamResults(String recieptId);
			 ExamResults getExamResultsById(String reciptId);
		
	
}