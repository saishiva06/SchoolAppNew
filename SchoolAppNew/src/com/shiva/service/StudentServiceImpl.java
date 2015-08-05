package com.shiva.service;

import java.util.List;
import java.util.Map;

import com.shiva.dao.StudentDao;
import com.shiva.entity.Student;
import com.shiva.entity.StudentByClass;
public class StudentServiceImpl implements StudentService {
	private StudentDao studentDao;
	
	public StudentServiceImpl() { }

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	@Override
	public boolean isStudentExists(String u_login) {
		return studentDao.isStudentExists(u_login);
	}

	@Override
	public int createStudent(String rollNo, String admissionNo,String studentFirstName,String studentLastName, String studentClass, String section, String medium,
			String studentFatherName,String studentMotherName, String dob, String caste, String subCaste,String religion,String phoneNumber,
			String village,String gender, String fees, String doj,int status){
		return studentDao.createStudent( rollNo,admissionNo,studentFirstName, studentLastName,  studentClass,  section,  medium, studentFatherName, studentMotherName,  dob,  caste, subCaste, religion, phoneNumber, village, gender, fees,  doj,status);
	}

	@Override
	public boolean deleteAllStudents() {
		return studentDao.deleteAllStudents();
	}

	@Override
	public List<Student> getStudents() {
		return studentDao.getStudents();
	}

	@Override
	public Student getStudentByStudentname(String u_login) {
		return studentDao.getStudentByStudentname(u_login);
	}

	@Override
	public Student getStudentById(String StudentId) {
		return studentDao.getStudentById(StudentId);
	}

	@Override
	public int getStudentId(String u_login) {
		return studentDao.getStudentId(u_login);
	}

	@Override
	public String getStudentname(int u_id) {
		return studentDao.getStudentname(u_id);
	}

	@Override
	public List<Map<String, Object>> getStudentsMap() {
		return studentDao.getStudentsMap();
	}

	@Override
	public Map<String, Object> getStudentMap(String u_login) {
		return studentDao.getStudentMap(u_login);
	}

	@Override
	public int updateStudent(Map<String, Object> StudentMap) {
		return studentDao.updateStudent(StudentMap);
	}
	@Override
	public boolean deleteStudent(String StudentId) {
		return studentDao.deleteStudent(StudentId);
	}

	@Override
	public String getLastRecordRollNum(String studentClass) {
		return studentDao.getLastRecordRollNum(studentClass);
	}

	@Override
	public List<StudentByClass> getStudentCountByClass() {
		return studentDao.getStudentCountByClass();
	}

	@Override
	public Student getStudentByAdmissionNum(String admNo) {
		return studentDao.getStudentByAdmissionNum(admNo);
	}

	public String getTotalFee() {
		return studentDao.getTotalFee();	
}

	public String getLastRecordAdmNum() {
		return studentDao.getLastRecordAdmNum();
	}
    
	public Student getStudentByRollNum(String rollNo) {
		 return studentDao.getStudentByRollNum(rollNo);
	}
	
}
