package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class FristDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(FristDemoApplication.class, args);
	}
	
	@RequestMapping("/")
	public String hello() {
		return "Hello Boss, Im working fine!";
	}
}
