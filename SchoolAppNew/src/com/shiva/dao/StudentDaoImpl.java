package com.shiva.dao;


import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.Student;


public class StudentDaoImpl extends SqlMapClientDaoSupport implements StudentDao {
	//private static final Logger log = Logger.getLogger(StudentDaoImpl.class.getName());
	private SqlMapClientTemplate template = getSqlMapClientTemplate();
	
	public StudentDaoImpl() { }

	public boolean isStudentExists(String student_name) {
		try {
			@SuppressWarnings("unused")
			int result = (Integer) template.queryForObject("isStudentExists", student_name);
			return true;
		} catch (Exception ex) {
			//log.error("StudentDao:isStudentExists::" + ex.getMessage());
			return false;
		}
	}

	@Override
	public int createStudent(String rollNo, String studentFirstName,String studentLastName, String studentClass, String section, String medium,
			String studentFatherName,String studentMotherName, String dob, String caste, String religion,String phoneNumber,
			String village,String gender, String fees, String doj,int status) { 
		// TODO Auto-generated method stub
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("rollNo", rollNo);
		paramsMap.put("student_first_name", studentFirstName);
		paramsMap.put("student_last_name", studentLastName);
		paramsMap.put("class", studentClass);
		paramsMap.put("section", section);
		paramsMap.put("medium", medium);
		paramsMap.put("student_father_name", studentFatherName);
		paramsMap.put("student_mother_name", studentMotherName);
		paramsMap.put("student_dob", studentClass);
		paramsMap.put("student_caste", section);
		paramsMap.put("student_religion", medium);
		paramsMap.put("student_phone_num", section);
		paramsMap.put("student_village", village);
		paramsMap.put("student_gender", gender);
		paramsMap.put("student_fees", fees);
		paramsMap.put("student_doj", doj);
		paramsMap.put("student_status", status);
		try {
			int result = (Integer) template.insert("createStudent", paramsMap);
			return result;
		} catch (Exception ex) {
			//log.error("StudentDao:createStudent:insert::" + ex.getMessage());
			return -1;
		}
	}

	public boolean deleteAllStudents() {
		try {
			int result = template.delete("deleteAllStudents");
			return result != -1 ? true : false;
		} catch (Exception ex) {
			//log.error("StudentDao:deleteAllStudents::" + ex.getMessage());
			return false;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Student> getStudents() {
		List<Student> resultList = new LinkedList<Student>();
		try {
			resultList = template.queryForList("getStudents");
		} catch (Exception ex) {
			//log.error("StudentDao:getStudents::" + ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@Override
	public Student getStudentByStudentname(String student_name) {
		try {
			 Student Student = (Student) template.queryForObject("getStudentByStudentname", student_name);
			 String rollNo = Student.getRollno();
			 String studentFirstName=Student.getStudentFirstName();
			 String studentLastName=Student.getStudentFirstName();
			 String classs=Student.getClasss();
             String section=Student.getSection();
             String medium=Student.getMedium();
             String studentFatherName = Student.getStudentFatherName();
             String studentMotherName = Student.getStudentMotherName(); 
             String dob = Student.getDob();
             String caste = Student.getCaste();
             String religion = Student.getReligion();
             String phoneNumber = Student.getPhoneNumber();
             String village = Student.getVillage();
             String gender = Student.getGender();
             Double fees = Student.getFees();
             String doj = Student.getDoj();
             int status = Student.getStatus();
            Student resultStudent = new Student(rollNo,  studentFirstName, studentLastName,  classs,  section,  medium, studentFatherName, studentMotherName,  dob,  caste,  religion, phoneNumber, village, gender, fees,  doj,status);
 			return resultStudent;
 		} catch (Exception ex) {
 			//log.error("StudentDao:getStudentByStudentname::" + ex.getMessage());
 			return null;
 		}
	}

	@Override
	public Student getStudentById(int StudentId) {
		try {
			Student Student = (Student) template.queryForObject("getStudentByStudentname", StudentId);
			 String rollNo = Student.getRollno();
			 String studentFirstName=Student.getStudentFirstName();
			 String studentLastName=Student.getStudentFirstName();
			 String classs=Student.getClasss();
            String section=Student.getSection();
            String medium=Student.getMedium();
            String studentFatherName = Student.getStudentFatherName();
            String studentMotherName = Student.getStudentMotherName(); 
            String dob = Student.getDob();
            String caste = Student.getCaste();
            String religion = Student.getReligion();
            String phoneNumber = Student.getPhoneNumber();
            String village = Student.getVillage();
            String gender = Student.getGender();
            Double fees = Student.getFees();
            String doj = Student.getDoj();
            int status = Student.getStatus();
            Student resultStudent = new Student(rollNo,  studentFirstName, studentLastName,  classs,  section,  medium, studentFatherName, studentMotherName,  dob,  caste,  religion, phoneNumber, village, gender, fees,  doj,status);
			return resultStudent;
 		} catch (Exception ex) {
 			//log.error("StudentDao:getStudentByStudentname::" + ex.getMessage());
 			return null;
 		}
	}

	
	public int getStudentId(String student_name) {
		try {
			int result = (Integer) template.queryForObject("getStudentId", student_name);
			return result;
		} catch (Exception ex) {
			//log.error("StudentDao:getManagersWithAlerts::" + ex.getMessage());
			return 0;
		}
	}

	public String getStudentname(int u_id) {
		try {
			return (String) template.queryForObject("getStudentname", u_id);
		} catch (Exception ex) {
			//log.error("StudentDao:getStudentname::" + ex.getMessage());
			return null;
		}
	}
	@SuppressWarnings({ "unchecked", "finally" })
	public List<Map<String, Object>> getStudentsMap() {
		List<Map<String, Object>> resultList = new LinkedList<Map<String, Object>>();
		try {
			resultList = (List<Map<String, Object>>) template.queryForList("getStudentsMap");
		} catch (Exception ex) {
    		//log.error("StudentDao:getStudentsMap::" + ex.getMessage());
    	} finally {
    		return resultList;
    	}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public Map<String, Object> getStudentMap(String u_login) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try {
			List<Map<String, Object>> resultMapList = (List<Map<String, Object>>) template.queryForList("getStudentMap", u_login);
			resultMap = resultMapList.get(0);
		} catch (Exception ex) {
    		//log.error("StudentDao:getStudentMap::" + ex.getMessage());
    	} finally {
    		return resultMap;
    	}
	}
	public int updateStudent(Map<String, Object> StudentMap) {
		try {
			int result = template.update("updateStudentMap", StudentMap);
			return result;
		} catch (Exception ex) {
    		//log.error("StudentDao:updateStudent::" + ex.getMessage());
    		return -1;
    	}
	}

	
}