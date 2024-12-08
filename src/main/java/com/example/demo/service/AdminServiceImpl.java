package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.Student;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Override
	public List<Student> viewAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	
	

}
