package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{
@Query("select s from Student s where s.email=?1 and s.password=?2 ")
public Student checkStudentLogin(String email, String password);

public Optional<Student> findById(Long studentId);

}
