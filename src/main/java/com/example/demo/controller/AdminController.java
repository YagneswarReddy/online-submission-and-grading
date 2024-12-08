package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Student;
import com.example.demo.service.AdminService;
import com.example.demo.service.AssignmentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	 @Autowired
	    private AssignmentService assignmentService;


	@GetMapping("adminlogin")
	public ModelAndView adminLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}

	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}

	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String ausername = request.getParameter("ausername");
		String apassword = request.getParameter("apassword");

		Admin admin = adminService.checkAdminLogin(ausername, apassword);
		if (admin != null) {
			mv.setViewName("adminhome");
			mv.addObject(assignmentService.getAllAssignments());
			mv.addObject("admin", admin);// login success
		} else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallstudents");

		List<Student> students = adminService.viewAllStudents();
		mv.addObject("studentlist", students);
		return mv;

	}

}
