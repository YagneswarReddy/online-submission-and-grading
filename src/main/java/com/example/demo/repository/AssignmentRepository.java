package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Assignment;

@Repository
public interface AssignmentRepository extends JpaRepository<Assignment, Long> {

	public Assignment save(Assignment assignment);

	@Query("select a from Assignment a where a.id not in( select s.assignment.id from Submission s where s.student.id=?1)")
	List<Assignment> unSubmittedAssignment(Long studentId);

}
