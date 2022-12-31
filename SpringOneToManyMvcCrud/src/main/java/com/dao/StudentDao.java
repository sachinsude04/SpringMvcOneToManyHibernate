package com.dao;

import java.util.List;

import com.model.Student;

public interface StudentDao {

	public Student saveData(Student student);

	public List<Student> getStudent();

	public Student editStudentData(Integer id);

	public void deleteStudentData(Integer id);

	


}
