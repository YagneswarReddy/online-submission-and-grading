package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Admin;
import com.example.demo.model.Student;

public interface AdminService {
	public List<Student> viewAllStudents();

	public Admin checkAdminLogin(String uname, String pwd);

}
