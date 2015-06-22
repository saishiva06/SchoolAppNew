package com.shiva.util;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class SendSms {

	public static void sendSms(String recipient, String message) {
		try {
			// String recipient = "9010936467";
			// String message = "Hello";
			String username = "shs";
			String password = "2007";
			String originator = "SNSKMM";
			String requestUrl = "http://smsatm.net/spanelv2/api.php?"
					+ "username=" + URLEncoder.encode(username, "UTF-8")
					+ "&password=" + URLEncoder.encode(password, "UTF-8")
					+ "&to=" + URLEncoder.encode(recipient, "UTF-8") + "&from="
					+ URLEncoder.encode(originator, "UTF-8") + "&message="
					+ URLEncoder.encode(message, "UTF-8");
			System.out.println(requestUrl);
			URL url = new URL(requestUrl);
			HttpURLConnection uc = (HttpURLConnection) url.openConnection();
			System.out.println(uc.getResponseMessage());
			uc.disconnect();

		} catch (Exception ex) {
			System.out.println(ex.getMessage());

		}
	}

	public static void main(String args[]) {

	}
}