package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Submission;

public interface SubmissionRepository extends JpaRepository<Submission, Long> {

	List<Submission> findByAssignmentId(Long assignmentId);
	
	@Query("select s from Submission s where s.student.id=?1")
	List<Submission> getByStudentId(Long studentId);
	
}
