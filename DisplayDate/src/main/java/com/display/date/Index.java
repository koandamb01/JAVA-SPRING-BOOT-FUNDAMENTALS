package com.display.date;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Index {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/date")
	public String getDate(Model model) {
		String dayString = new SimpleDateFormat("EEEE").format(new Date()).toString();
		String dayNumber = new SimpleDateFormat("d").format(new Date()).toString();
		
		String monthString = new SimpleDateFormat("MMMM").format(new Date()).toString();
		String yearString = new SimpleDateFormat("YYYY").format(new Date()).toString();
		
		model.addAttribute("dayString", dayString);
		model.addAttribute("dayNumber", dayNumber);
		model.addAttribute("monthString", monthString);
		model.addAttribute("yearString", yearString);
		
		return "date.jsp";
	}
	
	@RequestMapping("/time")
	public String gettime(Model model) {
		DateFormat dateFormat = new SimpleDateFormat("hh:mm aa");
		String timeString = dateFormat.format(new Date()).toString();
		model.addAttribute("currentTime", timeString);
		
		return "time.jsp";
	}
}
