package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Student;

@Repository
@Transactional
public class StudentDaoImpl implements StudentDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public Student saveData(Student student) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.saveOrUpdate(student);
		transaction.commit();
		/*boolean b=transaction.wasCommitted();
		
		if(b==true)
		{
			return "successful insertion";
		}
		else
		{
			return "Failure in insertion";
		}*/
		return student;
	}
	
	public List<Student> getStudent() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		//Transaction transaction=session.beginTransaction();
		return session.createCriteria(Student.class).list();
	}
	
	public Student editStudentData(Integer id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		//Transaction transaction=session.beginTransaction();
		Student student=(Student)session.load(Student.class, id);
		
		
		return student;
	}
	
	public void deleteStudentData(Integer id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Student student=(Student)session.load(Student.class, id);
		session.delete(student);
		transaction.commit();
	}
	

}
