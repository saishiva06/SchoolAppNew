package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.TeacherDao;
import com.shiva.entity.Teacher;

public class TeacherServiceImpl implements TeacherService {

	private TeacherDao teacherDao;

	public TeacherServiceImpl() {
	}

	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	@Override
	public boolean isTeacherExists(String u_login) {
		return teacherDao.isTeacherExists(u_login);
	}

	@Override
	public int createTeacher(String teacherId, String teacherFirstName,
			String teacherLastName, String profQualification, String qualification, String exp,
			String subject, String dob, String caste,String subCaste, String phoneNumber,
			String village, String gender, String doj, int status) {
		return teacherDao.createTeacher(teacherId, teacherFirstName,
				teacherLastName,profQualification, qualification, exp, subject, dob, caste,
				subCaste,phoneNumber, village, gender, doj, status);

	}

	@Override
	public boolean deleteAllTeachers() {
		return teacherDao.deleteAllTeachers();
	}

	@Override
	public List<Teacher> getTeachers() {
		return teacherDao.getTeachers();
	}

	@Override
	public Teacher getTeacherByTeachername(String u_login) {
		return teacherDao.getTeacherByTeachername(u_login);
	}

	@Override
	public Teacher getTeacherById(String teacherId) {
		return teacherDao.getTeacherById(teacherId);
	}

	@Override
	public int getTeacherId(String u_login) {
		return teacherDao.getTeacherId(u_login);
	}

	@Override
	public String getTeachername(int u_id) {
		return teacherDao.getTeachername(u_id);
	}

	@Override
	public List<Map<String, Object>> getTeachersMap() {
		return teacherDao.getTeachersMap();
	}

	@Override
	public Map<String, Object> getTeacherMap(String u_login) {
		return teacherDao.getTeacherMap(u_login);
	}

	@Override
	public int updateTeacher(Map<String, Object> TeacherMap) {
		return teacherDao.updateTeacher(TeacherMap);
	}

	@Override
	public boolean deleteTeacher(String teacherId) {
		return teacherDao.deleteTeacher(teacherId);
	}

	

}
