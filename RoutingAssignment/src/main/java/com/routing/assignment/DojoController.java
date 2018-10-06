package com.routing.assignment;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DojoController {
	
	@RequestMapping("/{city}")
	public String Index(@PathVariable("city") String city) {
		String out = null;
		
		if(city.equals("dojo")) {
			out = "The dojo is awesome!";
		}
		else if(city.equals("burkina-faso")) {
			out = "Burkina Faso is the best country in the world!";
		}
		else if(city.equals("san-jose")) {
			out = "SJ dojo is the headquarters!";
		}
		
		return out;
	}
	
}
