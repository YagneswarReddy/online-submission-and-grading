package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Student;
import com.example.demo.model.Submission;
import com.example.demo.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService  {

	@Autowired
	private StudentRepository studentRepository;
	
	
	@Override
	public String studentRegistration(Student student) {
		// TODO Auto-generated method stub
		studentRepository.save(student);
		return "Student Registered Successfully";
	}


	@Override
	public Student checkStudentLogin(String email, String password) {
		// TODO Auto-generated method stub
		return studentRepository.checkStudentLogin(email, password);
	}


	@Override
	public Student getStudentById(long studentId) {
		// TODO Auto-generated method stub
		Optional<Student> student= studentRepository.findById(studentId);
		return student.get();
	}


	@Override
	public List<Student> getAllStudents() {

		return studentRepository.findAll();
	}


	@Override
	public List<Submission> findAllSubmission() {
		// TODO Auto-generated method stub
		return null;
	}


	

	

}
