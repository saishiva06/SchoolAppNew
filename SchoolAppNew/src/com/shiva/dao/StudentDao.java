package com.shiva.dao;

import java.util.List;
import java.util.Map;

import com.shiva.entity.Student;

public interface StudentDao {
	boolean isStudentExists(String u_login);
	int createStudent(String studentFirstName,String studentLastName, String studentClass, String section, String medium,
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
}