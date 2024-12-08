package com.example.demo.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Assignment;
import com.example.demo.model.Submission;
import com.example.demo.repository.AssignmentRepository;
import com.example.demo.repository.SubmissionRepository;

import java.util.List;

@Service
public class AssignmentService {
    @Autowired
    private AssignmentRepository assignmentRepository;

    @Autowired
    private SubmissionRepository submissionRepository;

    public List<Assignment> getAllAssignments() {
        return assignmentRepository.findAll();
    }

    public void createAssignment(Assignment assignment) {
        assignmentRepository.save(assignment);
    }

    public List<Submission> getSubmissionsForAssignment(Long assignmentId) {
        return submissionRepository.findByAssignmentId(assignmentId);
    }

    public void reviewSubmission(Long submissionId, String status) {
        Submission submission = submissionRepository.findById(submissionId).orElseThrow();
        submission.setStatus(status);
        submissionRepository.save(submission);
    }
    
    public List<Assignment> getUnSubmittedAssignments(Long studentId){
    	return assignmentRepository.unSubmittedAssignment(studentId);
    }
    
    
}
