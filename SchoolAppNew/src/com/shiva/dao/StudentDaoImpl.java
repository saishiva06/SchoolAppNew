package com.shiva.dao;


import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.shiva.entity.Student;
import com.shiva.entity.StudentByClass;


public class StudentDaoImpl extends SqlMapClientDaoSupport implements StudentDao {
	private SqlMapClientTemplate template = getSqlMapClientTemplate();
	
	public StudentDaoImpl() { }

	public boolean isStudentExists(String admission_num) {
		try {
			int result = (Integer) template.queryForObject("isStudentExists", admission_num);
			if(result>0) {
			return true;
			} else {
				return false;
			}
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public int createStudent(String rollNo, String admissionNo,String studentFirstName,String studentLastName, String studentClass, String section, String medium,
			String studentFatherName,String studentMotherName, String dob, String caste, String subCaste, String religion,String phoneNumber,
			String village,String gender, String fees, String doj,int status , String mole) { 
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		paramsMap.put("roll_num", rollNo);
		paramsMap.put("admission_num", admissionNo);
		paramsMap.put("student_fisrt_name", studentFirstName);
		paramsMap.put("student_last_name", studentLastName);
		paramsMap.put("student_class", studentClass);
		paramsMap.put("section", section);
		paramsMap.put("medium", medium);
		paramsMap.put("student_father_name", studentFatherName);
		paramsMap.put("student_mother_name", studentMotherName);
		paramsMap.put("student_dob", dob);
		paramsMap.put("student_caste", caste);
		paramsMap.put("sub_caste", subCaste);
		paramsMap.put("student_religion", religion);
		paramsMap.put("student_phone_num", phoneNumber);
		paramsMap.put("student_village", village);
		paramsMap.put("student_gender", gender);
		paramsMap.put("fees", fees);
		paramsMap.put("student_doj", doj);
		paramsMap.put("student_status", status);
		paramsMap.put("student_moles", mole);
		try {
			int result = (Integer) template.insert("createStudent", paramsMap);
			return result;
		} catch (Exception ex) {
			return -1;
		}
	}

	public boolean deleteAllStudents() {
		try {
			int result = template.delete("deleteAllStudents");
			return result != -1 ? true : false;
		} catch (Exception ex) {
			return false;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Student> getStudents() {
		List<Student> resultList = new LinkedList<Student>();
		try {
			resultList = template.queryForList("getStudents");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@Override
	public Student getStudentByStudentname(String student_name) {
		try {
			 Student Student = (Student) template.queryForObject("getStudentByStudentname", student_name);
			 
			 int sNo = Student.getsNo();
			 String rollNo = Student.getRollno();
			 String admissionNo = Student.getAdmissionNo();
			 String studentFirstName=Student.getStudentFirstName();
			 String studentLastName=Student.getStudentFirstName();
			 String classs=Student.getStudentClass();
             String section=Student.getSection();
             String medium=Student.getMedium();
             String studentFatherName = Student.getStudentFatherName();
             String studentMotherName = Student.getStudentMotherName(); 
             String dob = Student.getDob();
             String caste = Student.getCaste();
             String subCaste = Student.getSubCaste();
             String religion = Student.getReligion();
             String phoneNumber = Student.getPhoneNumber();
             String village = Student.getVillage();
             String gender = Student.getGender();
             String fees = Student.getFees();
             String doj = Student.getDoj();
             int status = Student.getStatus();
             String mole = Student.getMole();
            Student resultStudent = new Student(sNo,rollNo, admissionNo, studentFirstName, studentLastName,  classs,  section,  medium, studentFatherName, studentMotherName,  dob,  caste, subCaste, religion, phoneNumber, village, gender, fees,  doj,status ,mole);
 			return resultStudent;
 		} catch (Exception ex) {
 			return null;
 		}
	}

	@Override
	public Student getStudentById(String roll_num) {
		try {
			Student Student = (Student) template.queryForObject("getStudentById", Integer.valueOf(roll_num));
			return Student;
 		} catch (Exception ex) {
 			return null;
 		}
	}

	
	public int getStudentId(String student_name) {
		try {
			int result = (Integer) template.queryForObject("getStudentId", student_name);
			return result;
		} catch (Exception ex) {
			return 0;
		}
	}

	public String getStudentname(int u_id) {
		try {
			return (String) template.queryForObject("getStudentname", u_id);
		} catch (Exception ex) {
			return null;
		}
	}
	@SuppressWarnings({ "unchecked", "finally" })
	public List<Map<String, Object>> getStudentsMap() {
		List<Map<String, Object>> resultList = new LinkedList<Map<String, Object>>();
		try {
			resultList = (List<Map<String, Object>>) template.queryForList("getStudentsMap");
		} catch (Exception ex) {
    		
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
    	} finally {
    		return resultMap;
    	}
	}
	public int updateStudent(Map<String, Object> StudentMap) {
		try {
			int result = template.update("updateStudentMap", StudentMap);
			return result;
		} catch (Exception ex) {
    		return -1;
    	}
	}

	@Override
	public boolean deleteStudent(String roll_num) {
		try {
			int result = template.delete("deleteStudent",Integer.valueOf(roll_num));
			return result != -1 ? true : false;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public String getLastRecordRollNum(String student_class) {
		try {
			return (String) template.queryForObject("getLastRecordRollNum", student_class);
		} catch (Exception e) {
			return null;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	@Override
	public List<StudentByClass> getStudentCountByClass() {
		List<StudentByClass> resultList = new LinkedList<StudentByClass>();
		try {
			resultList = template.queryForList("getStudentCountByClass");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			return resultList;
		}
	}

	@Override
	public Student getStudentByAdmissionNum(String admNo) {
		try {
			Student Student = (Student) template.queryForObject("getStudentByAdmissionNum",admNo);
			return Student;
 		} catch (Exception ex) {
 			return null;
 		}
	}

	@Override
	public String getTotalFee() {
		try {
			return (String) template.queryForObject("getTotalFee");
		} catch (Exception e) {
			return null;
		}
	
}

	@Override
	public String getLastRecordAdmNum() {
		try {
			return (String) template.queryForObject("getLastRecordAdmNum");
		} catch (Exception e) {
			return "0";
		}
	}

	@Override
	public Student getStudentByRollNum(String rollNo) {
		try {
			Student Student = (Student) template.queryForObject("getStudentByRollNum",rollNo);
			return Student;
 		} catch (Exception ex) {
 			return null;
 		}
	}

}