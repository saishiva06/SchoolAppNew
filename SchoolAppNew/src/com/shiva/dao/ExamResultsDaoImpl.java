package com.shiva.dao;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.ExamResults;


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
			String grade, String rank) {
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
		try {
			int result = template.update("updateResults", ExamResultsMap);
			return result;
		} catch (Exception ex) {
			// log.error("TeacherDao:updateTeacher::" + ex.getMessage());
			return -1;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<ExamResults> getExamResultsMap() {
		List<ExamResults> resultList = new LinkedList<ExamResults>();
		try {
			resultList = template.queryForList("getExamResultsMap");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			//log.error("StudentDao:getStudents::" + ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@Override
	public List<ExamResults> getAllResultsBySearch(String studentsClass,
			String rollNum, String studentName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteExamResults(String examResultsId) {
		try {
			int result = template.delete("deleteExamResults",examResultsId);
			return result != -1 ? true : false;
		} catch (Exception ex) {
			// log.error("TeacherDao:deleteAllTeachers::" + ex.getMessage());
			return false;
		}
	}

	@Override
	public ExamResults getExamResultsById(String examResultsId) {
		try {
			ExamResults examResults = (ExamResults) template.queryForObject("getExamResultsById", examResultsId);
            return examResults;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
	
}