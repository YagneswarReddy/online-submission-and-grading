package com.example.demo.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Admin;
import com.example.demo.model.Assignment;
import com.example.demo.model.Student;
import com.example.demo.model.Submission;
import com.example.demo.repository.SubmissionRepository;
import com.example.demo.service.AssignmentService;
import com.example.demo.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;

	@Autowired
	private AssignmentService assignmentService;

	@Autowired
	private SubmissionRepository submissionRepo;

	private String cpassword;
	private String cemail;

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentreg");
		return mv;

	}

	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request) {
		long id = Long.parseLong(request.getParameter("cid"));
		String name = request.getParameter("cname");
		String gender = request.getParameter("cgender");
		String program = request.getParameter("cprogram");
		String branch = request.getParameter("cbranch");
		String email = request.getParameter("cemail");
		String password = request.getParameter("cpassword");

		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setGender(gender);
		student.setProgram(program);
		student.setBranch(branch);
		student.setEmail(email);
		student.setPassword(password);

		String message = studentService.studentRegistration(student);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message", message);
		return mv;

	}

	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;

	}

	@PostMapping("checkstudentlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String cemail = request.getParameter("cemail");
		String cpassword = request.getParameter("cpassword");

		Student student = studentService.checkStudentLogin(cemail, cpassword);

		HttpSession session = request.getSession();
		if (student != null) {
			mv.addObject(student);
			mv.setViewName("studenthome");
			session.setAttribute("studentId", student.getId()); // Save userId in the session
			// login success
		} else {
			mv.setViewName("studentloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@GetMapping("student/assignment")
	public ModelAndView getAssignments(ModelAndView model, HttpSession session) {

		// fetch assignments and filter them if already submitted
		List<Assignment> assignments = assignmentService
				.getUnSubmittedAssignments((Long) session.getAttribute("studentId"));

		model.addObject("assignments", assignments);
		model.setViewName("assignment");

		return model;
	}

	@PostMapping("/student/submitassignment")
	public String submitAssignment(@RequestParam("file") MultipartFile multipartFile, HttpSession session,
			@RequestParam("id") Long assignmentId) throws IOException {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		Assignment assignment = new Assignment();
		assignment.setId(assignmentId);
		Student s = new Student();
		s.setId((long) session.getAttribute("studentId"));
		Submission submission = new Submission();
		submission.setAssignment(assignment);
		submission.setStudent(s);
		submission.setContent(multipartFile.getBytes());
		submission.setStatus("submitted");
		submission.setFileName(fileName);
		submissionRepo.save(submission);

		return "redirect:/student/assignment";
	}

	@GetMapping("/student/submissions")
	public ModelAndView getSubmittedAssignments(ModelAndView model, @RequestParam("studentId") Long studentId) {

		List<Submission> submissions = submissionRepo.getByStudentId(studentId);
		model.addObject("submissions", submissions);
		model.setViewName("viewallassignments");
		return model;

	}



}
