package com.example.demo;

import java.io.File;
import java.io.IOException;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import com.example.demo.model.Assignment;
import com.example.demo.repository.AssignmentRepository;

@DataJpaTest
@AutoConfigureTestDatabase(replace=Replace.NONE)
class SpringMvcsdpProjectApplicationTests {
	@Autowired
	private AssignmentRepository repo;

	@Autowired
	private TestEntityManager entityManager;
	
	

	@Test
	@Rollback(false)
	void testInsertAssignment() throws IOException{
		File file = new File("C:\\Users\\Bojja Shivani\\OneDrive\\Documents\\2200031214_jfsd_lab.docx");
		
		
		Assignment assignment = new Assignment();
		
	}

}
