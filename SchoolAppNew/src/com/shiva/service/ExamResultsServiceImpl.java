package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.ExamResultsDao;
import com.shiva.entity.ExamResults;


public class ExamResultsServiceImpl implements ExamResultsService {

	
	private ExamResultsDao examResultsDao;

	public ExamResultsServiceImpl() {
	}


	public ExamResultsDao getExamResultsDao() {
		return examResultsDao;
	}

	public void setExamResultsDao(ExamResultsDao examResultsDao) {
		this.examResultsDao = examResultsDao;
	}

	
	@Override
	public int createResult(String rollno, String studentName,
			String studentClass, String examTtile, String examDate,
			String telugu1, String telugu2, String hindi1, String hindi2,
			String english1, String english2, String maths1, String maths2,
			String science1, String science2, String social1, String social2,
			String computers, String arts, String others, String total,
			String grade, String rank, int status) {
		// TODO Auto-generated method stub
		return examResultsDao.createResult(rollno, studentName, studentClass, examTtile, examDate, telugu1, telugu2, hindi1, hindi2, english1, english2, maths1, maths2, science1, science2, social1, social2, computers, arts, others, total, grade, rank, status);
	}

	@Override
	public int updateResults(Map<String, Object> ExamResultsMap) {
		// TODO Auto-generated method stub
		return examResultsDao.updateResults(ExamResultsMap);
	}

	@Override
	public List<ExamResults> getExamResultsMap() {
		// TODO Auto-generated method stub
		return examResultsDao.getExamResultsMap();
	}

	@Override
	public List<ExamResults> getAllResultsBySearch(String studentsClass,
			String rollNum, String studentName) {
		// TODO Auto-generated method stub
		return examResultsDao.getAllResultsBySearch(studentsClass, rollNum, studentName);
	}

	@Override
	public boolean deleteExamResults(String recieptId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ExamResults getExamResultsById(String reciptId) {
		// TODO Auto-generated method stub
		return null;
	}


	

	

	

}
