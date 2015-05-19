package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.entity.ExamResults;

public interface ExamResultsService {
	
	          int createResult(String rollno, String studentName,String studentClass, String examTtile, 
		       		   String examDate, int telugu1,int telugu2,int hindi1, 
			       		int hindi2, int english1, int english2,int maths1,int maths2,int science1, 
			       		int science2,int social1,int social2,int computers,int arts,int others,
			       		int total,String grade,int rank);
			 int updateResults(Map<String, Object> ExamResultsMap);
			 List<ExamResults>  getExamResultsMap();
			 List<ExamResults>  getAllResultsBySearch(String studentsClass,String rollNum, String studentName);
			 boolean deleteExamResults(String recieptId);
			 ExamResults getExamResultsById(String reciptId);
		
	
}