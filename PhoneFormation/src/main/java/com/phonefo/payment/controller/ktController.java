package com.phonefo.payment.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.payment.service.KtServiceDAO;

@Controller
@RequestMapping("/phonefo")
public class ktController {

	@Inject
	private KtServiceDAO service;
	
	@RequestMapping("/payment/kt")
	public String kt_payment(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("all", service.all(payment));
		model.addAttribute("yTeen", service.yTeen(payment));
		model.addAttribute("y24", service.y24(payment));
		model.addAttribute("lteEgg", service.lteEgg(payment));
		
		return "mainView";
	}
}
