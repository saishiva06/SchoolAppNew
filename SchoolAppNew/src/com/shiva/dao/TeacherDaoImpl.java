package com.shiva.dao;


import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.Teacher;


public class TeacherDaoImpl extends SqlMapClientDaoSupport implements TeacherDao {
	//private static final Logger log = Logger.getLogger(TeacherDaoImpl.class.getName());
	private SqlMapClientTemplate template = getSqlMapClientTemplate();
	
	public TeacherDaoImpl() { }

	public boolean isTeacherExists(String teacher_name) {
		try {
			@SuppressWarnings("unused")
			int result = (Integer) template.queryForObject("isTeacherExists", teacher_name);
			return true;
		} catch (Exception ex) {
			//log.error("TeacherDao:isTeacherExists::" + ex.getMessage());
			return false;
		}
	}

	@Override
	public int createTeacher(String teacherId, String teacherFirstName,String teacherLastName, String qualification, String exp, 
			String subject, String dob, String caste, String phoneNumber,String village,String gender, String doj,int status) { 
		// TODO Auto-generated method stub
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("rollNo", teacherId);
		paramsMap.put("teacher_first_name", teacherFirstName);
		paramsMap.put("teacher_last_name", teacherLastName);
		paramsMap.put("qualification", qualification);
		paramsMap.put("exp", exp);
		paramsMap.put("subject", subject);
		paramsMap.put("teacher_dob", dob);
		paramsMap.put("teacher_caste", caste);
		paramsMap.put("teacher_phone_num", phoneNumber);
		paramsMap.put("teacher_village", village);
		paramsMap.put("teacher_gender", gender);
		paramsMap.put("teacher_doj", doj);
		paramsMap.put("teacher_status", status);
		try {
			int result = (Integer) template.insert("createTeacher", paramsMap);
			return result;
		} catch (Exception ex) {
			//log.error("TeacherDao:createTeacher:insert::" + ex.getMessage());
			return -1;
		}
	}

	public boolean deleteAllTeachers() {
		try {
			int result = template.delete("deleteAllTeachers");
			return result != -1 ? true : false;
		} catch (Exception ex) {
			//log.error("TeacherDao:deleteAllTeachers::" + ex.getMessage());
			return false;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Teacher> getTeachers() {
		List<Teacher> resultList = new LinkedList<Teacher>();
		try {
			resultList = template.queryForList("getTeachers");
		} catch (Exception ex) {
			//log.error("TeacherDao:getTeachers::" + ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@Override
	public Teacher getTeacherByTeachername(String teacher_name) {
		try {
			 Teacher Teacher = (Teacher) template.queryForObject("getTeacherByTeachername", teacher_name);
			 String teacherId = Teacher.getTeacherId();
			 String teacherFirstName=Teacher.getTeacherFirstName();
			 String teacherLastName=Teacher.getTeacherFirstName();
			 String qualification=Teacher.getQualification();
             String exp=Teacher.getExp();
             String subject=Teacher.getSubject();
             String dob = Teacher.getDob();
             String caste = Teacher.getCaste();
             String phoneNumber = Teacher.getPhoneNumber();
             String village = Teacher.getVillage();
             String gender = Teacher.getGender();
            String doj = Teacher.getDoj();
             int status = Teacher.getStatus();
            Teacher resultTeacher = new Teacher(teacherId,  teacherFirstName, teacherLastName,  qualification,  exp,  subject,  dob,  caste,  phoneNumber, village, gender, doj,status);
 			return resultTeacher;
 		} catch (Exception ex) {
 			//log.error("TeacherDao:getTeacherByTeachername::" + ex.getMessage());
 			return null;
 		}
	}

	@Override
	public Teacher getTeacherById(int TeacherId) {
		try {
			Teacher Teacher = (Teacher) template.queryForObject("getTeacherByTeachername", TeacherId);
			String teacherId = Teacher.getTeacherId();
					 String teacherFirstName=Teacher.getTeacherFirstName();
					 String teacherLastName=Teacher.getTeacherFirstName();
					 String qualification=Teacher.getQualification();
		             String exp=Teacher.getExp();
		             String subject=Teacher.getSubject();
		             String dob = Teacher.getDob();
		             String caste = Teacher.getCaste();
		             String phoneNumber = Teacher.getPhoneNumber();
		             String village = Teacher.getVillage();
		             String gender = Teacher.getGender();
		            String doj = Teacher.getDoj();
		             int status = Teacher.getStatus();
		            
            Teacher resultTeacher = new Teacher(teacherId,  teacherFirstName, teacherLastName,  qualification,  exp,  subject,  dob,  caste,  phoneNumber, village, gender, doj,status);
			return resultTeacher;
 		} catch (Exception ex) {
 			//log.error("TeacherDao:getTeacherByTeachername::" + ex.getMessage());
 			return null;
 		}
	}

	
	public int getTeacherId(String teacher_name) {
		try {
			int result = (Integer) template.queryForObject("getTeacherId", teacher_name);
			return result;
		} catch (Exception ex) {
			//log.error("TeacherDao:getManagersWithAlerts::" + ex.getMessage());
			return 0;
		}
	}

	public String getTeachername(int u_id) {
		try {
			return (String) template.queryForObject("getTeachername", u_id);
		} catch (Exception ex) {
			//log.error("TeacherDao:getTeachername::" + ex.getMessage());
			return null;
		}
	}
	@SuppressWarnings({ "unchecked", "finally" })
	public List<Map<String, Object>> getTeachersMap() {
		List<Map<String, Object>> resultList = new LinkedList<Map<String, Object>>();
		try {
			resultList = (List<Map<String, Object>>) template.queryForList("getTeachersMap");
		} catch (Exception ex) {
    		//log.error("TeacherDao:getTeachersMap::" + ex.getMessage());
    	} finally {
    		return resultList;
    	}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public Map<String, Object> getTeacherMap(String u_login) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try {
			List<Map<String, Object>> resultMapList = (List<Map<String, Object>>) template.queryForList("getTeacherMap", u_login);
			resultMap = resultMapList.get(0);
		} catch (Exception ex) {
    		//log.error("TeacherDao:getTeacherMap::" + ex.getMessage());
    	} finally {
    		return resultMap;
    	}
	}
	public int updateTeacher(Map<String, Object> TeacherMap) {
		try {
			int result = template.update("updateTeacherMap", TeacherMap);
			return result;
		} catch (Exception ex) {
    		//log.error("TeacherDao:updateTeacher::" + ex.getMessage());
    		return -1;
    	}
	}

	
}