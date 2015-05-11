package com.shiva.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.shiva.entity.Teacher;

public interface TeacherDao {
	boolean isTeacherExists(String u_login);
	int createTeacher(String teacherId, String teacherFirstName,String teacherLastName, String qualification, String exp, String subject, String dob, String caste, String phoneNumber,String village,String gender, Date doj,int status);
    boolean deleteAllTeachers();
	List<Teacher> getTeachers();
	Teacher getTeacherByTeachername(String u_login);
    Teacher getTeacherById(String teacherId);
	int getTeacherId(String u_login);
	String getTeachername(int u_id);
	List<Map<String, Object>> getTeachersMap();
	Map<String, Object> getTeacherMap(String u_login);
	int updateTeacher(Map<String, Object> TeacherMap);
	boolean deleteTeacher(String teacherId);
	
}