package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class StringsAssignmentApplication {

	public static void main(String[] args) {
		SpringApplication.run(StringsAssignmentApplication.class, args);
	}
	
	@RequestMapping("/")
	public String hello() {
		return "Hello Mohamed!, How is your day going so far?";
	}
	
	@RequestMapping("/random")
	public String random() {
		return "Spring Boot is great!, but I'm going to build my own mini Java framework";
	}
}
