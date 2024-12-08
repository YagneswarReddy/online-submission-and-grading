package com.example.demo.controller;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.example.demo.model.Assignment;
import com.example.demo.repository.AssignmentRepository;

@Controller
public class AppController {
	@Autowired
	private AssignmentRepository repo;

	@GetMapping("/assign")
	public String viewAssignments() {
		return "assignment";
	}

	@PostMapping("/upload")
	public String uploadFile(@RequestParam("assignment") MultipartFile multipartFile, RedirectAttributes ra)
			throws IOException {
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		Assignment assignment = new Assignment();
		/*
		 * assignment.setName(fileName);
		 * assignment.setContent(multipartFile.getBytes());
		 * assignment.setSize(multipartFile.getSize()); assignment.setUploadTime(new
		 * Date());
		 */	repo.save(assignment);
		ra.addFlashAttribute("message", "The file has been uploaded successfully.");
		return "redirect:/assign";
	}

}
