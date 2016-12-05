package com.phonefo.payment.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.payment.service.KtServiceDAO;
import com.phonefo.payment.service.LgServiceDAO;
import com.phonefo.payment.service.SktService;

@Controller
@RequestMapping("/phonefo")
public class PaymentController {
	
	@Inject
	private SktService skt;
	
	@Inject
	private KtServiceDAO kt;
	
	@Inject
	private LgServiceDAO lg;
	
	@RequestMapping("/payment")
	public String payment(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "payment/payment.jsp");
		
		model.addAttribute("skt", skt.payment(payment));
		model.addAttribute("kt", kt.payment(payment));
		model.addAttribute("lg", lg.payment(payment));
		
		return "mainView";
	}
}
