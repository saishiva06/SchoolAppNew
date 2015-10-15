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
	public int createResult(String rollno, String studentName,String studentClass, String examTtile, 
    		   String examDate, int telugu1,int telugu2,int hindi1, 
    		int hindi2, int english1, int english2,int maths1,int maths2,int science1, 
    		int science2,int social1,int social2,int computers,int arts,int others,
    		int total,String grade,int rank) {
		return examResultsDao.createResult(rollno, studentName, studentClass, examTtile, examDate, telugu1, telugu2, hindi1, hindi2, english1, english2, maths1, maths2, science1, science2, social1, social2, computers, arts, others, total, grade, rank);
	}

	@Override
	public int updateResults(Map<String, Object> ExamResultsMap) {
		return examResultsDao.updateResults(ExamResultsMap);
	}

	@Override
	public List<ExamResults> getExamResultsMap() {
		return examResultsDao.getExamResultsMap();
	}

	@Override
	public List<ExamResults> getAllResultsBySearch(String studentsClass,
			String rollNum,String examType, String studentName) {
		return examResultsDao.getAllResultsBySearch(studentsClass, rollNum, examType,studentName);
	}

	@Override
	public boolean deleteExamResults(String recieptId) {
		return examResultsDao.deleteExamResults(recieptId);
	}

	@Override
	public ExamResults getExamResultsById(String reciptId) {
		return examResultsDao.getExamResultsById(reciptId);
	}


	@Override
	public boolean insertMarks(String rollnum, String Name, String subject,
			String Marks, String studentClass, String examTitle, String examDate) {
		return examResultsDao.insertMarks(rollnum, Name, subject, Marks, studentClass, examTitle, examDate);
	}


	

	

	

}
