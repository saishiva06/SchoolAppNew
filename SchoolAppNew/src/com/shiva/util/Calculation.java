package com.shiva.util;


import com.shiva.entity.ExamResults;
public class Calculation {

	
	
	public  int getTotalMarks(ExamResults ExamResults) { 
		int total = 0;
		total = (Integer)(Integer.valueOf(ExamResults.getTelugu1()) + Integer.valueOf(ExamResults.getTelugu2()) + Integer.valueOf(ExamResults.getHindi2()) + Integer.valueOf(ExamResults.getHindi1()) + Integer.valueOf(ExamResults.getEnglish2()) + Integer.valueOf(ExamResults.getEnglish1()) + Integer.valueOf(ExamResults.getMaths1()) + Integer.valueOf(ExamResults.getMaths2()) + Integer.valueOf(ExamResults.getScience1())+ Integer.valueOf(ExamResults.getScience2()) + Integer.valueOf(ExamResults.getArts()) + Integer.valueOf(ExamResults.getComputers()) + Integer.valueOf(ExamResults.getSocial1()) + Integer.valueOf(ExamResults.getSocial2())) ;
		return total;
	}
}
