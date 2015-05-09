package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.entity.Teacher;

public interface TeacherService {
	boolean isTeacherExists(String u_login);
	int createTeacher(String teacherId, String teacherFirstName,String teacherLastName, String qualification, String exp, String subject, String dob, String caste, String phoneNumber,String village,String gender, String doj,int status);
    boolean deleteAllTeachers();
	List<Teacher> getTeachers();
	Teacher getTeacherByTeachername(String u_login);
    Teacher getTeacherById(int TeacherId);
	int getTeacherId(String u_login);
	String getTeachername(int u_id);
	List<Map<String, Object>> getTeachersMap();
	Map<String, Object> getTeacherMap(String u_login);
	int updateTeacher(Map<String, Object> TeacherMap);
	
}