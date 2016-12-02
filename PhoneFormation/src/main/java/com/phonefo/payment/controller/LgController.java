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
		
		model.addAttribute("body", "./payment/lg/lg.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("special", service.payment_special(payment));
		model.addAttribute("netInside", service.payment_netInside(payment));
		model.addAttribute("lte", service.payment_lte(payment));
		
		return "mainView";
	}
	
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ ¿œπ›")
	public String dataNormal(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_data.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("dataNormal", service.payment_dataNormal(payment));
		model.addAttribute("data13", service.payment_data13(payment));
		model.addAttribute("data23", service.payment_data23(payment));
		model.addAttribute("data36", service.payment_data36(payment));
		model.addAttribute("data66", service.payment_data66(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ 1.3")
	public String data13(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment//lg/lg_data.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("dataNormal", service.payment_dataNormal(payment));
		model.addAttribute("data13", service.payment_data13(payment));
		model.addAttribute("data23", service.payment_data23(payment));
		model.addAttribute("data36", service.payment_data36(payment));
		model.addAttribute("data66", service.payment_data66(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ 2.3")
	public String data23l(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_data.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("dataNormal", service.payment_dataNormal(payment));
		model.addAttribute("data13", service.payment_data13(payment));
		model.addAttribute("data23", service.payment_data23(payment));
		model.addAttribute("data36", service.payment_data36(payment));
		model.addAttribute("data66", service.payment_data66(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ 3.6")
	public String data36l(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_data.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("dataNormal", service.payment_dataNormal(payment));
		model.addAttribute("data13", service.payment_data13(payment));
		model.addAttribute("data23", service.payment_data23(payment));
		model.addAttribute("data36", service.payment_data36(payment));
		model.addAttribute("data66", service.payment_data66(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ 6.6")
	public String data66(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_data.jsp");
		
		model.addAttribute("data", service.payment_data(payment));
		model.addAttribute("dataNormal", service.payment_dataNormal(payment));
		model.addAttribute("data13", service.payment_data13(payment));
		model.addAttribute("data23", service.payment_data23(payment));
		model.addAttribute("data36", service.payment_data36(payment));
		model.addAttribute("data66", service.payment_data66(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ Ω∫∆Ûº»A")
	public String SpecialA(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_dataSpecial.jsp");
		
		model.addAttribute("Special", service.payment_special(payment));
		model.addAttribute("SpecialA", service.payment_specialA(payment));
		model.addAttribute("SpecialB", service.payment_specialB(payment));
		model.addAttribute("SpecialC", service.payment_specialC(payment));
		model.addAttribute("SpecialD", service.payment_specialD(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ Ω∫∆Ûº»B")
	public String SpecialB(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_dataSpecial.jsp");
		
		model.addAttribute("Special", service.payment_special(payment));
		model.addAttribute("SpecialA", service.payment_specialA(payment));
		model.addAttribute("SpecialB", service.payment_specialB(payment));
		model.addAttribute("SpecialC", service.payment_specialC(payment));
		model.addAttribute("SpecialD", service.payment_specialD(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ Ω∫∆Ûº»C")
	public String SpecialC(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_dataSpecial.jsp");
		
		model.addAttribute("Special", service.payment_special(payment));
		model.addAttribute("SpecialA", service.payment_specialA(payment));
		model.addAttribute("SpecialB", service.payment_specialB(payment));
		model.addAttribute("SpecialC", service.payment_specialC(payment));
		model.addAttribute("SpecialD", service.payment_specialD(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/µ•¿Ã≈Õ Ω∫∆Ûº»D")
	public String SpecialD(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_dataSpecial.jsp");
		
		model.addAttribute("Special", service.payment_special(payment));
		model.addAttribute("SpecialA", service.payment_specialA(payment));
		model.addAttribute("SpecialB", service.payment_specialB(payment));
		model.addAttribute("SpecialC", service.payment_specialC(payment));
		model.addAttribute("SpecialD", service.payment_specialD(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/LTE ∏¡≥ª 34")
	public String netInside34(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_netInside.jsp");
		
		model.addAttribute("netInside", service.payment_netInside(payment));
		model.addAttribute("netInside34", service.payment_netInside34(payment));
		model.addAttribute("netInside42", service.payment_netInside42(payment));
		model.addAttribute("netInside52", service.payment_netInside52(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/LTE ∏¡≥ª 42")
	public String netInside42(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_netInside.jsp");
		
		model.addAttribute("netInside", service.payment_netInside(payment));
		model.addAttribute("netInside34", service.payment_netInside34(payment));
		model.addAttribute("netInside42", service.payment_netInside42(payment));
		model.addAttribute("netInside52", service.payment_netInside52(payment));
		
		return "mainView";
	}
	
	
	@RequestMapping("/payment/lg/LTE ∏¡≥ª 52")
	public String netInside52(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_netInside.jsp");
		
		model.addAttribute("netInside", service.payment_netInside(payment));
		model.addAttribute("netInside34", service.payment_netInside34(payment));
		model.addAttribute("netInside42", service.payment_netInside42(payment));
		model.addAttribute("netInside52", service.payment_netInside52(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/lg/LTE 34")
	public String lteSinier(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/lg/lg_lte.jsp");
		
		model.addAttribute("lte", service.payment_lte(payment));
		model.addAttribute("lte34", service.payment_lte34(payment));
		model.addAttribute("lte42", service.payment_lte42(payment));
		model.addAttribute("lte52", service.payment_lte52(payment));
		model.addAttribute("lte62", service.payment_lte62(payment));
		model.addAttribute("lte72", service.payment_lte72(payment));
		model.addAttribute("lte85", service.payment_lte85(payment));
		model.addAttribute("lte100", service.payment_lte100(payment));
		model.addAttribute("lte120", service.payment_lte120(payment));
		
		return "mainView";
	}
	
	
	
}
