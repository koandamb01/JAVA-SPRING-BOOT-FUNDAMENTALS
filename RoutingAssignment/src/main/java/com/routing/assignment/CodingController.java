package com.routing.assignment;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/med")
public class CodingController {
	
	@RequestMapping("")
	public String Index() {
		return "Hello med what's up?";
	}
	
	@RequestMapping("/python")
	public String python() {
		return "Python/Django was awesome!";
	}
	
	@RequestMapping("/java")
	public String java() {
		return "Java/Spring is good!";
	}
	
}
