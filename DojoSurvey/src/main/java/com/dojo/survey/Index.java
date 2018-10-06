package com.dojo.survey;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Index {
	
	@RequestMapping("/")
	public String index(HttpSession session) { 
		if(session.getAttribute("dataMap") != null) {
			session.invalidate();
		}
		return "index.jsp"; 
	}
	
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String process(@RequestParam(value="name") String name,
							@RequestParam(value="location") String location,
							@RequestParam(value="language") String language,
							@RequestParam(value="comment") String comment,
							HttpSession session) 
	{
		HashMap<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("name", name);
		dataMap.put("location", location);
		dataMap.put("language", language);
		dataMap.put("comment", comment);
		
		session.setAttribute("dataMap", dataMap);
		return "redirect:/result";
	}
	
	@RequestMapping("/result")
	public String result(HttpSession session) { 
		if(session.getAttribute("dataMap") == null) {
			return "redirect:/";
		}
		return "success.jsp"; }
}
