package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.TeacherDao;
import com.shiva.entity.Teacher;
public class TeacherServiceImpl implements TeacherService {
	private TeacherDao teacherDao;
	
	public TeacherServiceImpl() { }

	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	@Override
	public boolean isTeacherExists(String u_login) {
		// TODO Auto-generated method stub
		return teacherDao.isTeacherExists(u_login);
	}

	@Override
	public int createTeacher(String teacherId, String teacherFirstName,String teacherLastName, String qualification, String exp, String subject, String dob, String caste, String phoneNumber,String village,String gender, String doj,int status) {
		// TODO Auto-generated method stub
		return teacherDao.createTeacher(teacherId,  teacherFirstName, teacherLastName,  qualification,  exp,  subject,  dob,  caste,  phoneNumber, village, gender, doj,status);
		
	}

	@Override
	public boolean deleteAllTeachers() {
		// TODO Auto-generated method stub
		return teacherDao.deleteAllTeachers();
	}

	@Override
	public List<Teacher> getTeachers() {
		// TODO Auto-generated method stub
		return teacherDao.getTeachers();
	}

	@Override
	public Teacher getTeacherByTeachername(String u_login) {
		// TODO Auto-generated method stub
		return teacherDao.getTeacherByTeachername(u_login);
	}

	@Override
	public Teacher getTeacherById(int TeacherId) {
		// TODO Auto-generated method stub
		return teacherDao.getTeacherById(TeacherId);
	}

	@Override
	public int getTeacherId(String u_login) {
		// TODO Auto-generated method stub
		return teacherDao.getTeacherId(u_login);
	}

	@Override
	public String getTeachername(int u_id) {
		// TODO Auto-generated method stub
		return teacherDao.getTeachername(u_id);
	}

	@Override
	public List<Map<String, Object>> getTeachersMap() {
		// TODO Auto-generated method stub
		return teacherDao.getTeachersMap();
	}

	@Override
	public Map<String, Object> getTeacherMap(String u_login) {
		// TODO Auto-generated method stub
		return teacherDao.getTeacherMap(u_login);
	}

	@Override
	public int updateTeacher(Map<String, Object> TeacherMap) {
		// TODO Auto-generated method stub
		return teacherDao.updateTeacher(TeacherMap);
	}

	
}
