package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Student;
import com.example.demo.model.Submission;

public interface StudentService
{
	
	public String studentRegistration(Student student);
    public Student checkStudentLogin(String email,String password );
	public Student getStudentById(long studentId);
	public List<Student> getAllStudents();
	
	public List<Submission> findAllSubmission();

}
