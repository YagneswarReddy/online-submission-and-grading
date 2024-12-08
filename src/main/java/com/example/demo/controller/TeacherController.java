package com.example.demo.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Assignment;
import com.example.demo.model.Submission;
import com.example.demo.repository.SubmissionRepository;
import com.example.demo.service.AssignmentService;
import com.example.demo.service.StudentService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

	@Autowired
	private AssignmentService assignmentService;
	@Autowired
	private SubmissionRepository submissionRepo;

	@Autowired
	StudentService studentService;

	@GetMapping("/assignments")
	public ModelAndView viewAssignments(ModelAndView model) {
		model.setViewName("createAssignment");
		model.addObject("assignments", assignmentService.getAllAssignments());
		return model;
	}

	@PostMapping("/assignments")
	public String createAssignment(@ModelAttribute Assignment assignment) {
		assignmentService.createAssignment(assignment);
		return "redirect:/teacher/assignments";
	}

	@GetMapping("/getAllStudents")
	public ModelAndView getAllStudents(ModelAndView model) {

		model.addObject("students", studentService.getAllStudents());
		model.setViewName("viewallstudents");
		return model;
	}

	@GetMapping("/review")
	public ModelAndView reviewAssignment(ModelAndView model) {

		List<Submission> submissions = submissionRepo.findAll();
		model.addObject("submissions", submissions);
		model.setViewName("review");
		return model;

	}

	@PostMapping("/providegrades")
	public String provideGrades(@RequestParam("id") Long id, @RequestParam("grade") String grade) throws IOException {
		Optional<Submission> s = submissionRepo.findById(id);
		if (s.isPresent()) {
			Submission sub = s.get();
			sub.setGrade(grade);
			sub.setStatus("reviewed");
			submissionRepo.save(sub);
		}

		return "redirect:/teacher/review";
	}

	@GetMapping("/downloadFile/{id}")
	public ResponseEntity<byte[]> downloadFile(@PathVariable Long id) {
		Optional<Submission> s = submissionRepo.findById(id);
		Submission sub = s.get();
		System.out.println(sub.getFileName()+" and content "+ sub.getContent());
		HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.TEXT_PLAIN);
	    headers.setContentDisposition(ContentDisposition.builder("attachment")
	            .filename(sub.getFileName()) // Adjust filename accordingly
	            .build());
	    
	    return new ResponseEntity<>(sub.getContent(), headers, HttpStatus.OK);

	}
}
