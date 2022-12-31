package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Address;
import com.model.Student;
import com.service.StudentService;

@Controller
public class StudentController {

	@Autowired 
	StudentService studentService;
	@RequestMapping(value="/index")
	public String indexmap(Model model)
	{
		Student student=new Student();
		List<Address> addresses=new ArrayList();
		Address add1=new Address();
		Address add2=new Address();
		addresses.add(add1);
		addresses.add(add2);
		student.setAddresses(addresses);
		model.addAttribute("studentForm", student);
		return "registeration";
	}
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String saveData(Model model,@ModelAttribute("studentForm") Student student)
	{
		
		List<Address> addresses=student.getAddresses();
		for (Address address : addresses) {
			address.setStudent(student);
		}
		student.setAddresses(addresses);
		studentService.saveData(student);
		//model.addAttribute("studentForm", str);
		return "registeration";
		
	}
	@RequestMapping(value="/display")
	public String displayStudent(Model model)
	{
		//studentService.getStudent();
		model.addAttribute("list", studentService.getStudent());
		return "welcome";
	}
	@RequestMapping(value="/edit")
	public String updateData(Model model,@RequestParam Integer id)
	{
		Student student=studentService.editStudentData(id);
		System.out.println(student.getId());
		model.addAttribute("studentForm", student);
		return "edit";
	}
	@RequestMapping(value="/delete")
	public String deletePerson(Model model,@RequestParam Integer id)
	{
		studentService.deleteStudentData(id);
		model.addAttribute("list", studentService.getStudent());
		return "welcome";
	}
	
}
