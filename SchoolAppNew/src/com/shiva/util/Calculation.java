package com.shiva.util;


import java.util.List;

import com.shiva.entity.ExamResults;
import com.shiva.entity.FeeDetails;
import com.shiva.entity.Student;
import com.shiva.service.FeeDetailsService;
import com.shiva.service.SpringService;


public class Calculation {

private FeeDetailsService feeDetailsService;

	/*public FeeDetailsService getFeeDetailsService() {
		return feeDetailsService;
	}

	public void setFeeDetailsService(FeeDetailsService feeDetailsService) {
		this.feeDetailsService = feeDetailsService;
	}
	*/
	public Calculation() {
    	super();
    	feeDetailsService = (FeeDetailsService) SpringService.getInstance().getBean("feeDetailsServiceImpl");
	}
	
	public  int getTotalMarks(ExamResults ExamResults) { 
		int total = 0;
		total = (Integer)(Integer.valueOf(ExamResults.getTelugu1()) + Integer.valueOf(ExamResults.getTelugu2()) + Integer.valueOf(ExamResults.getHindi2()) + Integer.valueOf(ExamResults.getHindi1()) + Integer.valueOf(ExamResults.getEnglish2()) + Integer.valueOf(ExamResults.getEnglish1()) + Integer.valueOf(ExamResults.getMaths1()) + Integer.valueOf(ExamResults.getMaths2()) + Integer.valueOf(ExamResults.getScience1())+ Integer.valueOf(ExamResults.getScience2()) + Integer.valueOf(ExamResults.getArts()) + Integer.valueOf(ExamResults.getComputers()) + Integer.valueOf(ExamResults.getSocial1()) + Integer.valueOf(ExamResults.getSocial2())) ;
		return total;
	}
	
	public  int getDueFee(Student student) { 
		int total = 0;
		List<FeeDetails> feeDetailsList =  feeDetailsService.getAllFeeDetailsBySearch("", "",student.getRollno());
     if(feeDetailsList.size()!=0) {
		for(FeeDetails feeDetails :feeDetailsList) {
    	 if(feeDetails.getFeeType().equalsIgnoreCase("tutionFee")) {
    		 total = total + Integer.valueOf(feeDetails.getOtherFee());
    	 }
     }
     }
     int dueFee = Integer.valueOf(student.getFees()) - total;
     return dueFee;
	}
	
	public  int getFeePaid(Student student) { 
		int total = 0;
		List<FeeDetails> feeDetailsList =  feeDetailsService.getAllFeeDetailsBySearch("", "", student.getRollno());
		if(feeDetailsList.size()!=0) {
		for(FeeDetails feeDetails :feeDetailsList) {
    	 if(feeDetails.getFeeType().equalsIgnoreCase("tutionFee")) {
    		 total = total + Integer.valueOf(feeDetails.getOtherFee());
    	 }
     }
		}
     int dueFee = Integer.valueOf(student.getFees()) - total;
     return total;
	}
}
