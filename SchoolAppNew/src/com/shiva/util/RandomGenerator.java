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
		for (int i = 0; i < 8; i++) {
			int number = new Random().nextInt(NUM_LIST.length());
			number = (number - 1 == -1) ? number : number - 1;
			char ch = NUM_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}
	
	public static String getStudentId() {
		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < 4; i++) {
			int number = new Random().nextInt(NUM_LIST.length());
			number = (number - 1 == -1) ? number : number - 1;
			char ch = NUM_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
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
