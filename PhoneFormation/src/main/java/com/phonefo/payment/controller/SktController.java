package com.phonefo.payment.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.payment.domain.SktVO;
import com.phonefo.payment.service.SktService;

@Controller
@RequestMapping("/phonefo")
public class SktController {
	
	@Inject
	private SktService service; 

	
	@RequestMapping("/skt_payment")
	public String payment(String payment, Model model) throws Exception{
		List<SktVO> list = new ArrayList<>();
		list = service.payment(payment);
		model.addAttribute("signiture", list) ;
		model.addAttribute("body","./payment/skt.jsp");
		
		return "mainView";
	}
	
	@RequestMapping("/skt_payment/details")
	public String details(Model model){
		
		model.addAttribute("body", "./payment/skt_Details.jsp");
		
		return "mainView";
	}
}
