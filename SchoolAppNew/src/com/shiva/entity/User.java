package com.shiva.entity;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import com.shiva.util.*;
import org.apache.log4j.Logger;

public class User implements Serializable {
	public static Logger log = Logger.getLogger(User.class.getName());
	private static final long serialVersionUID = 26L;

	private int userId = -1;
	private String userName;
	private String firstName;
	private String lastName;
	private String password;
	private int managerId = -1;
	private String primaryEmail;
	private String homePhone;
	private String workPhone;
	private String mobilePhone;
	private String SSN;
	private String middleInitial;
	private String addressLine1;
	private String addressLine2;
	private String addressCity;
	private String addressState;
	private String addressZip;
	private String maritalStatus;
	private Date dateOfBirth;
	private String contactName;
	private String emeAddressLine1;
	private String emeAddressLine2;
	private String emeAddressCity;
	private String emeAddressState;
	private String emeAddressZip;
	private String emeAddressCountry;
	private String emePrimaryPh;
	private String emeAlternatePh;
	private String emeContactRelation;
	private String preferredFirstName;
	private String gender;
	private String jobTitle;
	private String jobLocation;
	private String addressCountry;
	private String preferredLastName;
	private Date hireDate;
	private Date reHireDate;
	private String personalEmail;
	private String applicantId;
	private String employeeId;
	private String corpId;
	private String isTempPwd;
	private String userToken;
	private int userStatus;

	public User() { }

	public User(int u_id, String u_login, String u_first_name, String u_last_name, String u_password,
			int u_mgr_id, String u_pri_email, String u_homePhone, String u_workPhone, String u_mobilePhone,
			String u_ssn, String u_middle_initial, String u_address_line1, String u_address_line2,
			String u_address_city, String u_address_state, String u_address_zip, String u_marital_status,
			Date u_date_of_birth, String u_contact_name, String u_eme_address1, String u_eme_address2,
			String u_eme_city, String u_eme_state, String u_eme_zip, String u_eme_country, String u_eme_primary_ph,
			String u_eme_alternate_ph, String u_eme_contact_relation, String u_preferred_first_name,
			String u_gender, String u_job_title, String u_job_location, String u_address_country,
			String u_preferred_last_name, Date u_hire_date, Date u_re_hire_date, String u_pers_email,
			String u_applicant_id, String u_employee_id, String u_corp_id, String u_temp_pwd, String u_token, int u_status) {
		super();
		this.userId = u_id;
		this.userName = u_login;
		this.firstName = u_first_name;
		this.lastName = u_last_name;
		this.password = u_password;
		this.managerId = u_mgr_id;
		this.primaryEmail = u_pri_email;
		this.homePhone = u_homePhone;
		this.workPhone = u_workPhone;
		this.mobilePhone = u_mobilePhone;
		this.SSN = u_ssn;
		this.middleInitial = u_middle_initial;
		this.addressLine1 = u_address_line1;
		this.addressLine2 = u_address_line2;
		this.addressCity = u_address_city;
		this.addressState = u_address_state;
		this.addressZip = u_address_zip;
		this.maritalStatus = u_marital_status;
		this.setDateOfBirth(u_date_of_birth);
		this.contactName = u_contact_name;
		this.emeAddressLine1 = u_eme_address1;
		this.emeAddressLine2 = u_eme_address2;
		this.emeAddressCity = u_eme_city;
		this.emeAddressState = u_eme_state;
		this.emeAddressZip = u_eme_zip;
		this.emeAddressCountry = u_eme_country;
		this.emePrimaryPh = u_eme_primary_ph;
		this.emeAlternatePh = u_eme_alternate_ph;
		this.emeContactRelation = u_eme_contact_relation;
		this.preferredFirstName = u_preferred_first_name;
		this.gender = u_gender;
		this.jobTitle = u_job_title;
		this.jobLocation = u_job_location;
		this.addressCountry = u_address_country;
		this.preferredLastName = u_preferred_last_name;
		this.setHireDate(u_hire_date);
		this.setReHireDate(u_re_hire_date);
		this.personalEmail = u_pers_email;
		this.applicantId = u_applicant_id;
		this.employeeId = u_employee_id;
		this.corpId = u_corp_id;
		this.isTempPwd = u_temp_pwd;
		this.userToken = u_token;
		this.userStatus = u_status;
	}


	public String toString() {
		return null;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getPrimaryEmail() {
		return primaryEmail;
	}
	public void setPrimaryEmail(String primaryEmail) {
		this.primaryEmail = primaryEmail;
	}
	public String getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	public String getWorkPhone() {
		return workPhone;
	}
	public void setWorkPhone(String workPhone) {
		this.workPhone = workPhone;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getSSN() {
		return SSN;
	}
	public void setSSN(String SSN) {
		this.SSN = SSN;
	}
	public String getMiddleInitial() {
		return middleInitial;
	}
	public void setMiddleInitial(String middleInitial) {
		this.middleInitial = middleInitial;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public String getAddressCity() {
		return addressCity;
	}
	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}
	public String getAddressState() {
		return addressState;
	}
	public void setAddressState(String addressState) {
		this.addressState = addressState;
	}
	public String getAddressZip() {
		return addressZip;
	}
	public void setAddressZip(String addressZip) {
		this.addressZip = addressZip;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		if (dateOfBirth != null) {
			SimpleDateFormat sdf = new SimpleDateFormat(Constants.DEFAULT_FORMAT);
			Date defaultDate = null, orgDate = null;
			Calendar cal = Calendar.getInstance();
			cal.setTime(dateOfBirth);
			cal.set(Calendar.HOUR_OF_DAY, 0);
			cal.set(Calendar.MINUTE, 0);
			orgDate = cal.getTime();
			try {
				defaultDate = sdf.parse(Constants.DEFAULT_DATE_USER);
			} catch (ParseException e) {
				log.error("ParseException message: " + e.getMessage());
				dateOfBirth = null;
			}
			if (defaultDate.compareTo(orgDate) == 0) {
				dateOfBirth = null;
			}
		}
		this.dateOfBirth = dateOfBirth;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getEmeAddressLine1() {
		return emeAddressLine1;
	}
	public void setEmeAddressLine1(String emeAddressLine1) {
		this.emeAddressLine1 = emeAddressLine1;
	}
	public String getEmeAddressLine2() {
		return emeAddressLine2;
	}
	public void setEmeAddressLine2(String emeAddressLine2) {
		this.emeAddressLine2 = emeAddressLine2;
	}
	public String getEmeAddressCity() {
		return emeAddressCity;
	}
	public void setEmeAddressCity(String emeAddressCity) {
		this.emeAddressCity = emeAddressCity;
	}
	public String getEmeAddressState() {
		return emeAddressState;
	}
	public void setEmeAddressState(String emeAddressState) {
		this.emeAddressState = emeAddressState;
	}
	public String getEmeAddressZip() {
		return emeAddressZip;
	}
	public void setEmeAddressZip(String emeAddressZip) {
		this.emeAddressZip = emeAddressZip;
	}
	public String getEmeAddressCountry() {
		return emeAddressCountry;
	}
	public void setEmeAddressCountry(String emeAddressCountry) {
		this.emeAddressCountry = emeAddressCountry;
	}
	public String getEmePrimaryPh() {
		return emePrimaryPh;
	}
	public void setEmePrimaryPh(String emePrimaryPh) {
		this.emePrimaryPh = emePrimaryPh;
	}
	public String getEmeAlternatePh() {
		return emeAlternatePh;
	}
	public void setEmeAlternatePh(String emeAlternatePh) {
		this.emeAlternatePh = emeAlternatePh;
	}
	public String getEmeContactRelation() {
		return emeContactRelation;
	}
	public void setEmeContactRelation(String emeContactRelation) {
		this.emeContactRelation = emeContactRelation;
	}
	public String getPreferredFirstName() {
		return preferredFirstName;
	}
	public void setPreferredFirstName(String preferredFirstName) {
		this.preferredFirstName = preferredFirstName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getJobLocation() {
		return jobLocation;
	}
	public void setJobLocation(String jobLocation) {
		this.jobLocation = jobLocation;
	}
	public String getAddressCountry() {
		return addressCountry;
	}
	public void setAddressCountry(String addressCountry) {
		this.addressCountry = addressCountry;
	}
	public String getPreferredLastName() {
		return preferredLastName;
	}
	public void setPreferredLastName(String preferredLastName) {
		this.preferredLastName = preferredLastName;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		if (hireDate != null) {
			SimpleDateFormat sdf = new SimpleDateFormat(Constants.DEFAULT_FORMAT);
			Date defaultDate = null, orgDate = null;
			Calendar cal = Calendar.getInstance();
			cal.setTime(hireDate);
			cal.set(Calendar.HOUR_OF_DAY, 0);
			cal.set(Calendar.MINUTE, 0);
			orgDate = cal.getTime();
			try {
				defaultDate = sdf.parse(Constants.DEFAULT_DATE_USER);
			} catch (ParseException e) {
				log.error("ParseException message: " + e.getMessage());
				hireDate = null;
			}
			if (defaultDate.compareTo(orgDate) == 0) {
				hireDate = null;
			}
		}
		this.hireDate = hireDate;
	}
	public Date getReHireDate() {
		return reHireDate;
	}
	public void setReHireDate(Date reHireDate) {
		if (reHireDate != null) {
			SimpleDateFormat sdf = new SimpleDateFormat(Constants.DEFAULT_FORMAT);
			Date defaultDate = null, orgDate = null;
			Calendar cal = Calendar.getInstance();
			cal.setTime(reHireDate);
			cal.set(Calendar.HOUR_OF_DAY, 0);
			cal.set(Calendar.MINUTE, 0);
			orgDate = cal.getTime();
			try {
				defaultDate = sdf.parse(Constants.DEFAULT_DATE_USER);
			} catch (ParseException e) {
				log.error("ParseException message: " + e.getMessage());
				reHireDate = null;
			}
			if (defaultDate.compareTo(orgDate) == 0) {
				reHireDate = null;
			}
		}
		this.reHireDate = reHireDate;
	}
	public String getPersonalEmail() {
		return personalEmail;
	}
	public void setPersonalEmail(String personalEmail) {
		this.personalEmail = personalEmail;
	}
	public String getApplicantId() {
		return applicantId;
	}
	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getCorpId() {
		return corpId;
	}
	public void setCorpId(String corpId) {
		this.corpId = corpId;
	}
	public String getIsTempPwd() {
		return isTempPwd;
	}
	public void setIsTempPwd(String isTempPwd) {
		this.isTempPwd = isTempPwd;
	}
	public String getUserToken() {
		return userToken;
	}
	public void setUserToken(String userToken) {
		this.userToken = userToken;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}

	public Map<String, Object> getPropsMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", String.valueOf(this.userId));
		map.put("userName", this.userName);
		map.put("firstName", this.firstName);
		map.put("lastName", this.lastName);
		map.put("password", this.password);
		map.put("primaryEmail", this.primaryEmail);
		map.put("homePhone", this.homePhone);
		map.put("workPhone", this.workPhone);
		map.put("mobilePhone", this.mobilePhone);
		if (this.SSN != null && !this.SSN.equals("") && this.SSN.length() > 5) {
			map.put("SSN", "xxx-xx-" + this.SSN.substring(this.SSN.length() - 4, this.SSN.length()));
		} else {
			map.put("SSN", "");
		}
		map.put("fullSSN", this.SSN);
		map.put("middleInitial", middleInitial);
		map.put("addressLine1", addressLine1);
		map.put("addressLine2", addressLine2);
		map.put("addressCity", addressCity);
		map.put("addressState", addressState);
		map.put("addressZip", addressZip);
		map.put("maritalStatus", maritalStatus);
		map.put("dateOfBirth", (this.dateOfBirth == null) ? "" : new SimpleDateFormat(Constants.DEFAULT_FORMAT).format(this.dateOfBirth));
		map.put("dobDate", (this.dateOfBirth == null) ? "" : new SimpleDateFormat(Constants.DOB_DATE).format(this.dateOfBirth));
		map.put("dobMonth", (this.dateOfBirth == null) ? "" : new SimpleDateFormat(Constants.DOB_MONTH).format(this.dateOfBirth));
		map.put("dobYear", (this.dateOfBirth == null) ? "" : new SimpleDateFormat(Constants.DOB_YEAR).format(this.dateOfBirth));
		map.put("contactName", contactName);
		map.put("emeAddressLine1", emeAddressLine1);
		map.put("emeAddressLine2", emeAddressLine2);
		map.put("emeAddressCity", emeAddressCity);
		map.put("emeAddressState", emeAddressState);
		map.put("emeAddressZip", emeAddressZip);
		map.put("emeAddressCountry", emeAddressCountry);
		map.put("emePrimaryPh", emePrimaryPh);
		map.put("emeAlternatePh", emeAlternatePh);
		map.put("emeContactRelation", emeContactRelation);
		map.put("preferredFirstName", preferredFirstName);
		map.put("gender", gender);
		map.put("jobTitle", jobTitle);
		map.put("jobLocation", jobLocation);
		map.put("addressCountry", addressCountry);
		map.put("preferredLastName", preferredLastName);
		map.put("hireDate",  (this.hireDate == null) ? "" : new SimpleDateFormat(Constants.DEFAULT_FORMAT).format(this.hireDate));
		map.put("reHireDate", (this.reHireDate == null) ? "" : new SimpleDateFormat(Constants.DEFAULT_FORMAT).format(this.reHireDate));
		map.put("personalEmail", personalEmail);
		map.put("applicantId", applicantId);
		map.put("employeeId", employeeId);
		map.put("corpId", corpId);
		map.put("isTempPwd", isTempPwd);
		map.put("userToken", userToken);
		map.put("userStatus", String.valueOf(this.userStatus));
		return map;
	}


}
