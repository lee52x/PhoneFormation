package com.phonefo.payment.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.payment.service.LgServiceDAO;

@Controller
@RequestMapping("/phonefo")
public class LgController {

	@Inject
	private LgServiceDAO service;
	
	@RequestMapping("/payment/lg")
	public String kt_payment(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("special", service.payment_special(payment));
		model.addAttribute("netInside", service.payment_netInside(payment));
		model.addAttribute("lte", service.payment_lte(payment));
		
		return "mainView";
	}
}
