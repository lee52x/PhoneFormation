package com.phonefo.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/phonefo")
public class MainController {

	
	@RequestMapping("/test")
	public String test(){
		
		return "test";
	}
}
