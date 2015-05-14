package com.shiva.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.ExamResults;
import com.shiva.entity.FeeDetails;
import com.shiva.entity.Student;
import com.shiva.entity.Teacher;

public class ExamResultsDaoImpl extends SqlMapClientDaoSupport implements
ExamResultsDao {
	private SqlMapClientTemplate template = getSqlMapClientTemplate();

	public ExamResultsDaoImpl() {
	}

	@Override
	public int createResult(String rollno, String studentName,
			String studentClass, String examTitle, String examDate,
			String telugu1, String telugu2, String hindi1, String hindi2,
			String english1, String english2, String maths1, String maths2,
			String science1, String science2, String social1, String social2,
			String computers, String arts, String others, String total,
			String grade, String rank, int status) {
		// TODO Auto-generated method stub

		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("roll_num", rollno);
		paramsMap.put("student_name", studentName);
		paramsMap.put("student_class", studentClass);
		paramsMap.put("exam_title", examTitle);
		paramsMap.put("exam_date", examDate);
		paramsMap.put("telugu_1", telugu1);
		paramsMap.put("telugu_2", telugu2);
		paramsMap.put("hindi_1", hindi1);
		paramsMap.put("hindi_2", hindi2);
		paramsMap.put("english_1", english1);
		paramsMap.put("english_2", english2);
		paramsMap.put("maths_1", maths1);
		paramsMap.put("maths_2", maths2);
		paramsMap.put("science_1", science1);
		paramsMap.put("science_2", science2);
		paramsMap.put("social_1", social1);
		paramsMap.put("social_2", social2);
		paramsMap.put("computers", computers);
		paramsMap.put("arts", arts);
		paramsMap.put("others", others);
		paramsMap.put("total", total);
		paramsMap.put("rank", rank);
		paramsMap.put("grade", grade);
		try {
			int result = (Integer) template.insert("createResult", paramsMap);
			return result;
		} catch (Exception ex) {
			//log.error("StudentDao:createStudent:insert::" + ex.getMessage());
			return -1;
		}
	}

	@Override
	public int updateResults(Map<String, Object> ExamResultsMap) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ExamResults> getExamResultsMap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ExamResults> getAllResultsBySearch(String studentsClass,
			String rollNum, String studentName) {
		// TODO Auto-generated method stub
		return null;
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