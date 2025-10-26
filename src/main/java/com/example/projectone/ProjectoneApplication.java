package com.example.projectone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;



@SpringBootApplication
public class ProjectoneApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectoneApplication.class, args);
        System.out.println("✅ Swagger running at: http://localhost:8080/swagger-ui.html");
		
    }
}

	


