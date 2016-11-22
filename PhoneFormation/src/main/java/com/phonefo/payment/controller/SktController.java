package com.phonefo.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/phonefo")
public class SktController {

	
	@RequestMapping("/skt_payment")
	public String payment(Model model){
		
		model.addAttribute("body","./phone/skt.jsp");
		
		return "mainView";
	}
}
