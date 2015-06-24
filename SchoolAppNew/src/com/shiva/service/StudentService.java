package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.entity.Student;
import com.shiva.entity.StudentByClass;

public interface StudentService {
	boolean isStudentExists(String u_login);
	int createStudent( String admissionNo,String studentFirstName,String studentLastName, String studentClass, String section, String medium,
			String studentFatherName,String studentMotherName, String dob, String caste, String religion,String phoneNumber,
			String village,String gender, String fees, String doj,int status);
	boolean deleteAllStudents();
	List<Student> getStudents();
	Student getStudentByStudentname(String u_login);
	Student getStudentById(String StudentId);
	int getStudentId(String u_login);
	String getStudentname(int u_id);
	List<Map<String, Object>> getStudentsMap();
	Map<String, Object> getStudentMap(String u_login);
	int updateStudent(Map<String, Object> StudentMap);
	boolean deleteStudent(String StudentId);
	String getLastRecordRollNum( String studentClass);
	List<StudentByClass> getStudentCountByClass();
	Student getStudentByAdmissionNum(String admNo);
	String getTotalFee();
}