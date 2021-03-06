package com.counter;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Index {
	
	@RequestMapping("/")
	public String index(HttpSession session) {
		if(session.getAttribute("counter") == null) {
			session.setAttribute("counter", 0);
		}
		else {
			int counter = (Integer) session.getAttribute("counter") + 1;
			session.setAttribute("counter", counter);
		}
		return "index.jsp";
	}
	
	@RequestMapping("/add")
	public RedirectView incrementByTwo(HttpSession session) {
		int counter = (Integer) session.getAttribute("counter") + 1;
		session.setAttribute("counter", counter);
		return new RedirectView("/");
	}
	
	
	@RequestMapping("/reset")
	public RedirectView reset(HttpSession session) {
		session.invalidate();
		return new RedirectView("/");
	}
}
