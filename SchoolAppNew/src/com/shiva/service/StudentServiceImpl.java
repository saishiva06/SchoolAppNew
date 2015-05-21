package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.StudentDao;
import com.shiva.entity.Student;
public class StudentServiceImpl implements StudentService {
	private StudentDao studentDao;
	
	public StudentServiceImpl() { }

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	@Override
	public boolean isStudentExists(String u_login) {
		// TODO Auto-generated method stub
		return studentDao.isStudentExists(u_login);
	}

	@Override
	public int createStudent( String admissionNo,String studentFirstName,String studentLastName, String studentClass, String section, String medium,
			String studentFatherName,String studentMotherName, String dob, String caste, String religion,String phoneNumber,
			String village,String gender, String fees, String doj,int status){
		// TODO Auto-generated method stub
		return studentDao.createStudent(admissionNo,studentFirstName, studentLastName,  studentClass,  section,  medium, studentFatherName, studentMotherName,  dob,  caste,  religion, phoneNumber, village, gender, fees,  doj,status);
	}

	@Override
	public boolean deleteAllStudents() {
		// TODO Auto-generated method stub
		return studentDao.deleteAllStudents();
	}

	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return studentDao.getStudents();
	}

	@Override
	public Student getStudentByStudentname(String u_login) {
		// TODO Auto-generated method stub
		return studentDao.getStudentByStudentname(u_login);
	}

	@Override
	public Student getStudentById(String StudentId) {
		// TODO Auto-generated method stub
		return studentDao.getStudentById(StudentId);
	}

	@Override
	public int getStudentId(String u_login) {
		// TODO Auto-generated method stub
		return studentDao.getStudentId(u_login);
	}

	@Override
	public String getStudentname(int u_id) {
		// TODO Auto-generated method stub
		return studentDao.getStudentname(u_id);
	}

	@Override
	public List<Map<String, Object>> getStudentsMap() {
		// TODO Auto-generated method stub
		return studentDao.getStudentsMap();
	}

	@Override
	public Map<String, Object> getStudentMap(String u_login) {
		// TODO Auto-generated method stub
		return studentDao.getStudentMap(u_login);
	}

	@Override
	public int updateStudent(Map<String, Object> StudentMap) {
		// TODO Auto-generated method stub
		return studentDao.updateStudent(StudentMap);
	}
	@Override
	public boolean deleteStudent(String StudentId) {
		// TODO Auto-generated method stub
		return studentDao.deleteStudent(StudentId);
	}

	@Override
	public String getLastRecordRollNum(String studentClass) {
		// TODO Auto-generated method stub
		return studentDao.getLastRecordRollNum(studentClass);
	}
	
}
