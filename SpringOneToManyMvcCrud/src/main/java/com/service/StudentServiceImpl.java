package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.dao.StudentDao;
import com.model.Student;

@Service
@Component
public class StudentServiceImpl implements StudentService {

	@Autowired 
	StudentDao studentDao;

	
	public Student saveData(Student student) {
		// TODO Auto-generated method stub
		return studentDao.saveData(student);
	}

	
	public List<Student> getStudent() {
		// TODO Auto-generated method stub
		return studentDao.getStudent();
	}
	
	public Student editStudentData(Integer id) {
		// TODO Auto-generated method stub
		return studentDao.editStudentData(id);
	}

	
	public void deleteStudentData(Integer id) {
		// TODO Auto-generated method stub
		studentDao.deleteStudentData(id);	
	}	
	
}
