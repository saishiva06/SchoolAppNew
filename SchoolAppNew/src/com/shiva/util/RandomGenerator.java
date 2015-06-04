package com.shiva.util;

import java.util.Random;

public class RandomGenerator {
	private static final String CHAR_LIST = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	private static final String NUM_LIST = "1234567890";

	private static final int RANDOM_LENGTH = 8;

	public RandomGenerator() {
	}

	public static String getTempPwd() {
		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < RANDOM_LENGTH; i++) {
			int number = new Random().nextInt(CHAR_LIST.length());
			number = (number - 1 == -1) ? number : number - 1;
			char ch = CHAR_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}

	public static String getToken() {
		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < 26; i++) {
			int number = new Random().nextInt(CHAR_LIST.length());
			number = (number - 1 == -1) ? number : number - 1;
			char ch = CHAR_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}

	public static String getTeacherId() {
		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < 4; i++) {
			int number = new Random().nextInt(NUM_LIST.length());
			number = (number - 1 == -1) ? number : number - 1;
			char ch = NUM_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}
	
	public static String getAdmissionNum(String studentClass,String lastId) {
		String admisionConst = "SN";
		String admissionNum = "";
		String id ="";
		
		if(lastId==null || lastId.length()==0) {
			
			if(studentClass.equalsIgnoreCase("SSC") ) {
				id= "10";
			} else if(studentClass.equalsIgnoreCase("lkg") || studentClass.equalsIgnoreCase("ukg") || studentClass.equalsIgnoreCase("nursery")) {
				admisionConst = "SN" + String.valueOf(studentClass.charAt(0)).toUpperCase() + "1";
			} else {
				id = String.valueOf(studentClass.charAt(0)).toUpperCase();
			}
			
		    admissionNum = admisionConst + id + "001";
		} else {
			if(studentClass.equalsIgnoreCase("lkg") || studentClass.equalsIgnoreCase("ukg") || studentClass.equalsIgnoreCase("nursery")) {
				int num = Integer.valueOf(lastId.substring(3,7));
				admissionNum = "SN" + String.valueOf(studentClass.charAt(0)).toUpperCase() +  "" + (num+1);
		  
			} else if(studentClass.equalsIgnoreCase("SSC")) {
			  int num = Integer.valueOf(lastId.substring(2,7));
			  admissionNum = admisionConst +  "" + (num+1);
		   } else {
			int num = Integer.valueOf(lastId.substring(2,6));
			 admissionNum = admisionConst +  "" + (num+1);
		}
	}
		return admissionNum;
	}
	public static String getReciptNo() {
		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < 4; i++) {
			int number = new Random().nextInt(NUM_LIST.length());
			number = (number - 1 == -1) ? number : number - 1;
			char ch = NUM_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}
}
