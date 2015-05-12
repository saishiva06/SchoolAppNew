package com.shiva.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.FeeDetails;
import com.shiva.service.FeeDetailsService;

@Controller
public class FeeDetailsController {

	private FeeDetailsService feeDetailsService;

	public FeeDetailsService getFeeDetailsService() {
		return feeDetailsService;
	}

	public void setFeeDetailsService(FeeDetailsService feeDetailsService) {
		this.feeDetailsService = feeDetailsService;
	}
	
	
	
	@RequestMapping("/feeDetails")
	public ModelAndView loadFeeDetailsDashboard() throws Exception {
		return new ModelAndView("feeDetails");
	}
	
	@RequestMapping("/feeRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("feeRegistration");
	}

	@RequestMapping("/addFeeDetails.do")
	public ModelAndView addFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
         try {
            String studentName = request.getParameter("studentName");
			String rollNo = request.getParameter("rollno");
			String studentClass = request.getParameter("StudentClass");
			String section = request.getParameter("section");
			String medium = request.getParameter("medium");
			String mobileNo = request.getParameter("mobileNo");
			String feePaid = request.getParameter("feePaid");
			String feeType = request.getParameter("feeType");
			String feepaidDate = request.getParameter("feepaidDate");
			String recieptNo = "", admissionFee = "",tutionFee = "",  examFee = "",  vanFee  = "",  iitFee  = "", otherFee = "";
			
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			Date feepaidDate1 = null,feeDetailsDoj = null;
			try {
				feepaidDate1 = sdf.parse(feepaidDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(feepaidDate1);
			String today = output.format(new Date());
			int result = feeDetailsService.createFeeDetails(recieptNo,  rollNo, studentName,  studentClass,  admissionFee, tutionFee,  examFee,  vanFee,  iitFee, otherFee,formattedDob,  today,  today, today, today, 0);
			System.out.println("@@@ FeeDetails added..........");
			return new ModelAndView("redirect:feeDetails.do");
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("feeDetailsRegistration");
		}
	}
	@RequestMapping("/editFeeDetails.do")
	public ModelAndView editFeeDetails(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String feeDetailsId = request.getParameter("reciept_no");
		System.out.println("@@@ edit feeDetailsId.........."+feeDetailsId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editFeeDetails");
		if (feeDetailsId != null && feeDetailsId.length()>0) {
			FeeDetails feeDetails = feeDetailsService.getFeeDetailsById(feeDetailsId);
			SimpleDateFormat output = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date d = null,doj1 = null;
			try {
				doj1 = sdf.parse(feeDetails.getFeePayDate1());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDoj = output.format(doj1);
			feeDetails.setFeePayDate1(formattedDoj);
			mav.addObject("feeDetails", feeDetails);
		}
		return mav;
	}
	
	@RequestMapping("/deleteFeeDetails.do")
	public ModelAndView loadFeeDetailsDashboard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String feeDetailsId = request.getParameter("rollno");
		System.out.println("@@@ delete feeDetailsId.........."+feeDetailsId);
		if (feeDetailsId != null && feeDetailsId.length()>0) {
			boolean status = feeDetailsService.deleteFeeDetails(feeDetailsId);
			System.out.println("@@@ status...."+status);
		}
		return new ModelAndView("redirect:feeDetails.do");
	}

	@RequestMapping("/updateFeeDetails.do")
	public ModelAndView updateFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			String rollnum = request.getParameter("rollno");
			String feeDetailsFirstName = request.getParameter("feeDetailsFirstName");
			String feeDetailsLastName = request.getParameter("feeDetailsLastName");
			String feeDetailsClass = request.getParameter("feeDetailsClass");
			String section = request.getParameter("section");
			String medium = request.getParameter("medium");
			String feeDetailsFatherName = request.getParameter("feeDetailsFatherName");
			String feeDetailsMotherName = request.getParameter("feeDetailsMotherName");
			String feeDetailsDob = request.getParameter("dob");
			String caste = request.getParameter("caste");
			String religion = request.getParameter("religion");
			String phoneNumber = request.getParameter("mobileNo");
			String village = request.getParameter("village");
			String gender = request.getParameter("gender");
			String fees = request.getParameter("fee");
			String dateOfJoinee = request.getParameter("dateOfJoinee");
            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date feeDetailsDob1 = null,feeDetailsDoj = null;
			try {
				feeDetailsDob1 = sdf.parse(feeDetailsDob);
				feeDetailsDoj = sdf.parse(dateOfJoinee);
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formattedDob = output.format(feeDetailsDob1);
			String dateOfJoinee1 = output.format(feeDetailsDoj);
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("roll_num", rollnum);
			paramsMap.put("feeDetails_fisrt_name", feeDetailsFirstName);
			paramsMap.put("feeDetails_last_name", feeDetailsLastName);
			paramsMap.put("feeDetails_class", feeDetailsClass);
			paramsMap.put("section", section);
			paramsMap.put("medium", medium);
			paramsMap.put("feeDetails_father_name", feeDetailsFatherName);
			paramsMap.put("feeDetails_mother_name", feeDetailsMotherName);
			paramsMap.put("feeDetails_dob", formattedDob);
			paramsMap.put("feeDetails_caste", caste);
			paramsMap.put("feeDetails_religion", religion);
			paramsMap.put("feeDetails_phone_num", phoneNumber);
			paramsMap.put("feeDetails_village", village);
			paramsMap.put("feeDetails_gender", gender);
			paramsMap.put("feeDetails_doj", dateOfJoinee1);
			paramsMap.put("fees", fees);
			paramsMap.put("feeDetails_status", 0);
		    int result = feeDetailsService.updateFeeDetails(paramsMap);
			System.out.println("@@@ FeeDetails updated..........");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:feeDetails.do");
	}



}


