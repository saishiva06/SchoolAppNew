package com.shiva.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shiva.entity.BudgetDetails;
import com.shiva.entity.FeeDetails;
import com.shiva.service.BudgetDetailsService;
import com.shiva.service.FeeDetailsService;
import com.shiva.service.StudentService;
import com.shiva.util.RandomGenerator;
import com.shiva.util.SendSms;

@Controller
public class FeeDetailsController {

	private FeeDetailsService feeDetailsService;
	private StudentService studentService;
	private BudgetDetailsService budgetDetailsService;
	
	public BudgetDetailsService getBudgetDetailsService() {
		return budgetDetailsService;
	}

	public void setBudgetDetailsService(BudgetDetailsService budgetDetailsService) {
		this.budgetDetailsService = budgetDetailsService;
	}
	
	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public FeeDetailsService getFeeDetailsService() {
		return feeDetailsService;
	}

	public void setFeeDetailsService(FeeDetailsService feeDetailsService) {
		this.feeDetailsService = feeDetailsService;
	}

	@RequestMapping("/feeDetails")
	public ModelAndView loadFeeDetailsDashboard() throws Exception {
		List<FeeDetails> feeDetailsList = feeDetailsService.getFeeDetailsMap();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("feeDetails");
		if (feeDetailsList != null && feeDetailsList.size() > 0) {
			mav.addObject("feeDetailsData", feeDetailsList);
		}
		return mav;
	}

	@RequestMapping("/feeRegistration")
	public ModelAndView loadFeeRegistrationDashboard() throws Exception {
		return new ModelAndView("feeRegistration");
	}

	@RequestMapping("/addFeeDetails.do")
	public ModelAndView addFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		try {
			String rollNo = request.getParameter("rollno").toUpperCase();
			String studentName = request.getParameter("studentName");
			String studentClass = request.getParameter("StudentClass");
			String feeType = request.getParameter("feeType");
			String otherFee = request.getParameter("feePaid");
			String feepaidDate = request.getParameter("feepaidDate");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date feepaidDate1 = null;
			try {
				feepaidDate1 = sdf.parse(feepaidDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String recieptNo = RandomGenerator.getReciptNo();
			String formattedDob = output.format(feepaidDate1);
			int result = feeDetailsService.createFeeDetails(recieptNo, rollNo,
					studentName, studentClass, feeType, otherFee, formattedDob);
			BudgetDetails budgetDeails = budgetDetailsService.getBudgetDetailsById(1);
			int totalBudget = Integer.parseInt(budgetDeails.getBudgetCost());
			totalBudget = totalBudget + Integer.parseInt(otherFee);
			budgetDeails.setBudgetCost(String.valueOf(totalBudget));
			budgetDetailsService.updateBudgetDetails(budgetDeails);
			System.out.println("@@@ FeeDetails added.........." + result);
			String message= "student " + studentName + " paid fee " + otherFee + " as "+ feeType +" succesfully. And reciept Id is " + recieptNo +" ";
			String recipient = request.getParameter("mobileNo");
			SendSms.sendSms(recipient,message);
			return new ModelAndView("redirect:feeDetails.do");
			}
			catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("feeRegistration");
		}
		
	}

	@RequestMapping("/editFeeDetails.do")
	public ModelAndView editFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String feeDetailsId = request.getParameter("recieptNo");
		System.out.println("@@@ edit feeDetailsId.........." + feeDetailsId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editFeeDetails");
		if (feeDetailsId != null && feeDetailsId.length() > 0) {
			FeeDetails feeDetails = feeDetailsService
					.getFeeDetailsById(feeDetailsId);
			SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date d = null, doj1 = null;
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
	public ModelAndView loadFeeDetailsDashboard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String feeDetailsId = request.getParameter("recieptNo");
		String otherFeeAmount = request.getParameter("feePaid");
		
		System.out.println("@@@ delete feeDetailsId.........." + feeDetailsId);
		if (feeDetailsId != null && feeDetailsId.length() > 0) {
			boolean status = feeDetailsService.deleteFeeDetails(feeDetailsId);
			BudgetDetails budgetDeails = budgetDetailsService.getBudgetDetailsById(1);
			budgetDeails.setBudgetCost(String.valueOf(Integer.parseInt(budgetDeails.getBudgetCost())-Integer.parseInt(otherFeeAmount)));
			budgetDetailsService.updateBudgetDetails(budgetDeails);
			System.out.println("@@@ status...." + status);
		}
		return new ModelAndView("redirect:feeDetails.do");
	}

	@RequestMapping("/updateFeeDetails.do")
	public ModelAndView updateFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		try {
			String recieptNo = request.getParameter("recieptNo");
			String studentName = request.getParameter("studentName");
			String rollNo = request.getParameter("rollno");
			String studentClass = request.getParameter("StudentClass");
			String feeType = request.getParameter("feeType");
			String otherFee = request.getParameter("feePaid");
			String feepaidDate = request.getParameter("feepaidDate");
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
			Date feepaidDate1 = null;
			try {
				feepaidDate1 = sdf.parse(feepaidDate);
			} catch (ParseException e) {
			}
			
			String formattedPaidDate = output.format(feepaidDate1);
			FeeDetails feeDetails = feeDetailsService.getFeeDetailsById(recieptNo);
			Map<String, Object> paramsMap = new HashMap<String, Object>();
			paramsMap.put("recipt_no", recieptNo);
			paramsMap.put("roll_no", rollNo);
			paramsMap.put("student_name", studentName);
			paramsMap.put("student_class", studentClass);
			paramsMap.put("fee_type", feeType);
			paramsMap.put("fee_paid", otherFee);
			paramsMap.put("fee_pay_date_1", formattedPaidDate);
			int result = feeDetailsService.updateFeeDetails(paramsMap);
			BudgetDetails budgetDeails = budgetDetailsService.getBudgetDetailsById(1);
			int totalBudget = Integer.parseInt(budgetDeails.getBudgetCost());
			totalBudget = totalBudget + Integer.parseInt(otherFee);
			totalBudget = totalBudget -  Integer.parseInt(feeDetails.getOtherFee());
			budgetDeails.setBudgetCost(String.valueOf(totalBudget));
			budgetDetailsService.updateBudgetDetails(budgetDeails);
			System.out.println("@@@ FeeDetails updated.........." +result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:feeDetails.do");
	}
	@RequestMapping("/viewFeeDetails.do")
	public ModelAndView viewFeeDetails(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String feeDetailsId = request.getParameter("recieptNo");
		System.out.println("@@@ view feeDetailsId.........." + feeDetailsId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewFeeDetails");
		if (feeDetailsId != null && feeDetailsId.length() > 0) {
			FeeDetails feeDetails = feeDetailsService
					.getFeeDetailsById(feeDetailsId);
			SimpleDateFormat output = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date d = null, doj1 = null;
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

	
}
