package com.shiva.util;

public class Constants {
	
	
	
	public static final String DB_FORMAT = "yyyy-MM-dd";
	public static final String DEFAULT_FORMAT = "MM/dd/yyyy";
	public static final String DEFAULT_DATETIME = "MM/dd/yyyy HH:mm:ss";
	public static final String DEFAULT_TIME = "MM/dd/yyyy HH:mm";
	public static final String ELECTRONIC_FORMAT = "MMM dd, yyyy - HH:mm:ss";
	public static final String DOB_DATE = "dd";
	public static final String DOB_MONTH = "MM";
	public static final String DOB_YEAR = "yyyy";
	public static final String DATE_PDF = "yyMMdd";
	public static final String DATE_SUBMIT = "MM/dd/yyyy HH:mm:ss";
	public static final String DATE_DEMO = "MMM dd, yyyy";
	public static final String NODB_DATE = "MM-dd-yyyy";

	public static final String URL_SEPARATOR = "/";
	public static final String MAIL_ADDRESS_SEPEARTOR = ",";
	public static final int	DEFAULT_OFFSET_DB = 100;
	public static final String DEFAULT_DATE_DB = "12/31/2000";
	public static final String NOID = "no-id";
	public static final String DEFAULT_DATE_USER = "12/31/1900";
	public static final String DEFAULT_DATE_USER1 = "1900-12-31";

	
	public static final int STATUS_NOT_STARTED = 0;
	public static final int STATUS_COMPLETED = 1;
	public static final int STATUS_AT_RISK = 2;
	public static final int STATUS_PAST_DUE = 3;
	public static final int STATUS_IN_PROGRESS = 4;
	public static final int STATUS_PENDING = 5;
	public static final int STATUS_NA = 6;
	public static final int STATUS_FAIL = 7;
	public static final int STATUS_REJECT = 8;

	
	
	
	public static final String SUCCESS_CODE = "0";
	public static final String FAIL_CODE = "1";
	public static final String ERROR_CODE = "2";
	public static final int    TEMP_CODE = 3;

	public static final String INVALID_USER_ID_OR_PWD = "Invalid User Id or Password.";
	public static final String NO_SESSION = "";
	public static final String NO_ROUTE = "";
	public static final String NOROUTE = "noroute";
	public static final String SUCCESS_MSG = "OK";
	public static final String SUCCESS_ROUTE = "dashboard";
	public static final String FORGOT_SUCCESS = "We've sent an email to the address you registered with us containing the instructions for resetting your password.";
	public static final String FORGOT_FAIL = "Sorry, the username/email address you entered does not exist in our database. Please try again. For Help, contact <a href=\"mailto:workspace@intuit.com?subject=\">Workspace Team</a>.";
	public static final String FORGOT_ERROR = "An error has occurred. Please try again. If you continue to get this error, please contact the <a href=\"mailto:workspace@intuit.com?subject=New%20Hire%20Welcome%20Question\">Workspace Team</a>.";
	public static final String RESET_SUCCESS = "Your password was successfully changed!";
	public static final String RESET_FAIL = "An error has occurred. Please try again. If you continue to get this error, please contact the <a href=\"mailto:workspace@intuit.com?subject=New%20Hire%20Welcome%20Question\">Workspace Team</a>.";
	public static final String RESET_TEMP_PWD_FAIL = "Current/Temporary password is not correct!";
	public static final String ERROR_MSG = "An error has occurred. Please try again. If you continue to get this error, please contact the <a href=\"mailto:workspace@intuit.com?subject=New%20Hire%20Welcome%20Question\">Workspace Team</a>.";
	public static final String CHANGE_SUCCESS = "Your password has changed successfully!";
	public static final String CHANGE_FAIL = "Current password is not correct!";
	public static final String CHANGE_ERROR = "It looks like you are resetting your password to the last one used or the initial password provided to you. Please select a different password to use";
	public static final String SAVEASDRAFT_SUCCESS = "Request Details Saved Successfully";
	public static final String SAVEASDRAFT_FAIL = "An error has Occured while saving Request Details";

	public static final String NULL = null;
	public static final String EMPTY = "";
	
	public Constants() { }


}
