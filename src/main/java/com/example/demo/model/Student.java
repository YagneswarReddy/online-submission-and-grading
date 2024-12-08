package com.example.demo.model;

import java.util.List;
import jakarta.persistence.*;

@Entity
@Table(name="student")
public class Student {

    
    @Id
    @Column(name="student_id", nullable=false, length=100)
    private long id;

    @Column(name="student_name", nullable=false, length=100)
    private String name;

    @Column(name="student_gender", nullable=false, length=20)
    private String gender;

    @Column(name="student_program", nullable=false, length=50)
    private String program;

    @Column(name="student_branch", nullable=false, length=50)
    private String branch; // Changed to lowercase for consistency

    @Column(name="student_email", nullable=false, unique=true, length=100)
    private String email;

    @Column(name="student_password", nullable=false, length=100)
    private String password;

    // Getters and Setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   
}
