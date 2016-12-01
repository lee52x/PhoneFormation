package com.phonefo.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/phonefo")
public class PaymentController {
	
	@RequestMapping("/payment")
	public String payment(Model model) throws Exception{
		
		model.addAttribute("body", "payment/payment.jsp");
		
		return "mainView";
	}
}
