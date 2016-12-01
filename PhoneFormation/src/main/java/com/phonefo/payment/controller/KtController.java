package com.phonefo.payment.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.payment.service.KtServiceDAO;

@Controller
@RequestMapping("/phonefo")
public class KtController {

	@Inject
	private KtServiceDAO service;
	
	@RequestMapping("/payment/kt")
	public String kt_payment(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("all", service.all(payment));
		model.addAttribute("yTeen", service.yTeen(payment));
		model.addAttribute("y24", service.y24(payment));
		model.addAttribute("lteEgg", service.lteEgg(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 완전무한99(LTE)")
	public String limited99(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_limited.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("limited99", service.limited99(payment));
		model.addAttribute("limited77", service.limited77(payment));
		model.addAttribute("limited67", service.limited67(payment));
		model.addAttribute("limited61", service.limited61(payment));
		model.addAttribute("limited51", service.limited51(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 완전무한77(LTE)")
	public String limited77(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_limited.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("limited99", service.limited99(payment));
		model.addAttribute("limited77", service.limited77(payment));
		model.addAttribute("limited67", service.limited67(payment));
		model.addAttribute("limited61", service.limited61(payment));
		model.addAttribute("limited51", service.limited51(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 완전무한67(LTE)")
	public String limited67(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_limited.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("limited99", service.limited99(payment));
		model.addAttribute("limited77", service.limited77(payment));
		model.addAttribute("limited67", service.limited67(payment));
		model.addAttribute("limited61", service.limited61(payment));
		model.addAttribute("limited51", service.limited51(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 완전무한61(LTE)")
	public String limited61(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_limited.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("limited99", service.limited99(payment));
		model.addAttribute("limited77", service.limited77(payment));
		model.addAttribute("limited67", service.limited67(payment));
		model.addAttribute("limited61", service.limited61(payment));
		model.addAttribute("limited51", service.limited51(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 완전무한51(LTE)")
	public String limited51(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_limited.jsp");
		
		model.addAttribute("limited", service.limited(payment));
		model.addAttribute("limited99", service.limited99(payment));
		model.addAttribute("limited77", service.limited77(payment));
		model.addAttribute("limited67", service.limited67(payment));
		model.addAttribute("limited61", service.limited61(payment));
		model.addAttribute("limited51", service.limited51(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 모두다올레41(LTE)")
	public String all41(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_all.jsp");
		
		model.addAttribute("all", service.all(payment));
		model.addAttribute("all41", service.all41(payment));
		model.addAttribute("all34", service.all34(payment));
		model.addAttribute("all28", service.all28(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 모두다올레34(LTE)")
	public String all34(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_all.jsp");
		
		model.addAttribute("all", service.all(payment));
		model.addAttribute("all41", service.all41(payment));
		model.addAttribute("all34", service.all34(payment));
		model.addAttribute("all28", service.all28(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/순 모두다올레28(LTE)")
	public String all28(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_all.jsp");
		
		model.addAttribute("all", service.all(payment));
		model.addAttribute("all41", service.all41(payment));
		model.addAttribute("all34", service.all34(payment));
		model.addAttribute("all28", service.all28(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/Y틴 38")
	public String yTeen38(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_yTeen.jsp");
		
		model.addAttribute("yTeen", service.yTeen(payment));
		model.addAttribute("yTeen38", service.yTeen38(payment));
		model.addAttribute("yTeen32", service.yTeen32(payment));
		model.addAttribute("yTeen27", service.yTeen27(payment));
		model.addAttribute("yTeen20", service.yTeen20(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/Y틴 32")
	public String yTeen32(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_yTeen.jsp");
		
		model.addAttribute("yTeen", service.yTeen(payment));
		model.addAttribute("yTeen38", service.yTeen38(payment));
		model.addAttribute("yTeen32", service.yTeen32(payment));
		model.addAttribute("yTeen27", service.yTeen27(payment));
		model.addAttribute("yTeen20", service.yTeen20(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/Y틴 27")
	public String yTeen27(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_yTeen.jsp");
		
		model.addAttribute("yTeen", service.yTeen(payment));
		model.addAttribute("yTeen38", service.yTeen38(payment));
		model.addAttribute("yTeen32", service.yTeen32(payment));
		model.addAttribute("yTeen27", service.yTeen27(payment));
		model.addAttribute("yTeen20", service.yTeen20(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/Y틴 20")
	public String yTeen20(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_yTeen.jsp");
		
		model.addAttribute("yTeen", service.yTeen(payment));
		model.addAttribute("yTeen38", service.yTeen38(payment));
		model.addAttribute("yTeen32", service.yTeen32(payment));
		model.addAttribute("yTeen27", service.yTeen27(payment));
		model.addAttribute("yTeen20", service.yTeen20(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/LTE-알520")
	public String lteEgg520(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_lteEgg.jsp");
		
		model.addAttribute("lteEgg", service.lteEgg(payment));
		model.addAttribute("lteEgg520", service.lteEgg520(payment));
		model.addAttribute("lteEgg420", service.lteEgg420(payment));
		model.addAttribute("lteEgg340", service.lteEgg340(payment));
		model.addAttribute("lteEgg240", service.lteEgg240(payment));
		model.addAttribute("lteEgg190", service.lteEgg190(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/LTE-알420")
	public String lteEgg420(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_lteEgg.jsp");
		
		model.addAttribute("lteEgg", service.lteEgg(payment));
		model.addAttribute("lteEgg520", service.lteEgg520(payment));
		model.addAttribute("lteEgg420", service.lteEgg420(payment));
		model.addAttribute("lteEgg340", service.lteEgg340(payment));
		model.addAttribute("lteEgg240", service.lteEgg240(payment));
		model.addAttribute("lteEgg190", service.lteEgg190(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/kt/LTE-알340")
	public String lteEgg340(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_lteEgg.jsp");
		
		model.addAttribute("lteEgg", service.lteEgg(payment));
		model.addAttribute("lteEgg520", service.lteEgg520(payment));
		model.addAttribute("lteEgg420", service.lteEgg420(payment));
		model.addAttribute("lteEgg340", service.lteEgg340(payment));
		model.addAttribute("lteEgg240", service.lteEgg240(payment));
		model.addAttribute("lteEgg190", service.lteEgg190(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/LTE-알240")
	public String lteEgg240(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_lteEgg.jsp");
		
		model.addAttribute("lteEgg", service.lteEgg(payment));
		model.addAttribute("lteEgg520", service.lteEgg520(payment));
		model.addAttribute("lteEgg420", service.lteEgg420(payment));
		model.addAttribute("lteEgg340", service.lteEgg340(payment));
		model.addAttribute("lteEgg240", service.lteEgg240(payment));
		model.addAttribute("lteEgg190", service.lteEgg190(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/kt/LTE-알190")
	public String lteEgg190(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/kt/kt_lteEgg.jsp");
		
		model.addAttribute("lteEgg", service.lteEgg(payment));
		model.addAttribute("lteEgg520", service.lteEgg520(payment));
		model.addAttribute("lteEgg420", service.lteEgg420(payment));
		model.addAttribute("lteEgg340", service.lteEgg340(payment));
		model.addAttribute("lteEgg240", service.lteEgg240(payment));
		model.addAttribute("lteEgg190", service.lteEgg190(payment));
		
		
		return "mainView";
	}
	
	
}
