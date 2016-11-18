package com.phonefo.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/phonefo")
public class MainController {

	
	@RequestMapping("/test")
	public String test(Model model){
		
		model.addAttribute("body","./main/body.jsp");
		
		return "mainView";
	}
}
