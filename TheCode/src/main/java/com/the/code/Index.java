package com.the.code;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class Index {
	String[] codeList = {"Loyalty", "Courage", "Veracity", "Compassion", "Honor"};

	@RequestMapping("/")
	public String index() { return "index.jsp"; }
	
	@RequestMapping(value="/check", method=RequestMethod.POST)
	public String check(@RequestParam(value="code") String code, RedirectAttributes redirectAttributes, HttpSession session) {
		
		// Check the user code
		for(String value: codeList) {
			if(code.equals(value)) {
				redirectAttributes.addFlashAttribute("success", "You successfully pass the Test");
				return "redirect:/code";
			}
		}
		redirectAttributes.addFlashAttribute("error", "Wrong Code, You must try harder!");
		return "redirect:/";
	}
	
	@RequestMapping("/code")
	public String code(Model model) { 
		model.addAttribute("codeList", codeList);
		return "code.jsp";
	}
}
