package com.phonefo.payment.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.payment.service.SktService;

@Controller
@RequestMapping("/phonefo")
public class SktController {
	
	@Inject
	private SktService service; 

	
	@RequestMapping("/payment/skt")
	public String skt_payment(String payment, Model model) throws Exception{

		model.addAttribute("body","./payment/skt.jsp");
		
		model.addAttribute("signiture", service.payment_signiture(payment));
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("t_together", service.payment_t_together(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T 시그니처 Master")
	public String signiture_master(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_signiture.jsp");
		
		model.addAttribute("signiture", service.payment_signiture(payment));
		model.addAttribute("signiture_master", service.payment_signiture_master(payment));
		model.addAttribute("signiture_classic", service.payment_signiture_classic(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T 시그니처 Classic")
	public String signiture_classic(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_signiture.jsp");
		
		model.addAttribute("signiture", service.payment_signiture(payment));
		model.addAttribute("signiture_master", service.payment_signiture_master(payment));
		model.addAttribute("signiture_classic", service.payment_signiture_classic(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band YT 퍼펙트")
	public String band_yt_perfect(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_band_yt.jsp");
		
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_yt_perfect", service.payment_band_yt_perfect(payment));
		model.addAttribute("band_yt_7g", service.payment_band_yt_7g(payment));
		model.addAttribute("band_yt_3g", service.payment_band_yt_3g(payment));
		model.addAttribute("band_yt_1g", service.payment_band_yt_1g(payment));
		model.addAttribute("band_yt_save", service.payment_band_yt_save(payment));
		model.addAttribute("band_yt_option1", service.payment_band_yt_option1(payment));
		model.addAttribute("band_yt_option2", service.payment_band_yt_option2(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band YT 7G")
	public String band_yt_7g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_band_yt.jsp");
		
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_yt_perfect", service.payment_band_yt_perfect(payment));
		model.addAttribute("band_yt_7g", service.payment_band_yt_7g(payment));
		model.addAttribute("band_yt_3g", service.payment_band_yt_3g(payment));
		model.addAttribute("band_yt_1g", service.payment_band_yt_1g(payment));
		model.addAttribute("band_yt_save", service.payment_band_yt_save(payment));
		model.addAttribute("band_yt_option1", service.payment_band_yt_option1(payment));
		model.addAttribute("band_yt_option2", service.payment_band_yt_option2(payment));
		
		
		return "mainView";
	}@RequestMapping("/payment/skt/band YT 3G")
	public String band_yt_3g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_band_yt.jsp");
		
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_yt_perfect", service.payment_band_yt_perfect(payment));
		model.addAttribute("band_yt_7g", service.payment_band_yt_7g(payment));
		model.addAttribute("band_yt_3g", service.payment_band_yt_3g(payment));
		model.addAttribute("band_yt_1g", service.payment_band_yt_1g(payment));
		model.addAttribute("band_yt_save", service.payment_band_yt_save(payment));
		model.addAttribute("band_yt_option1", service.payment_band_yt_option1(payment));
		model.addAttribute("band_yt_option2", service.payment_band_yt_option2(payment));
		
		
		return "mainView";
	}@RequestMapping("/payment/skt/band YT 1G")
	public String band_yt_1g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_band_yt.jsp");
		
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_yt_perfect", service.payment_band_yt_perfect(payment));
		model.addAttribute("band_yt_7g", service.payment_band_yt_7g(payment));
		model.addAttribute("band_yt_3g", service.payment_band_yt_3g(payment));
		model.addAttribute("band_yt_1g", service.payment_band_yt_1g(payment));
		model.addAttribute("band_yt_save", service.payment_band_yt_save(payment));
		model.addAttribute("band_yt_option1", service.payment_band_yt_option1(payment));
		model.addAttribute("band_yt_option2", service.payment_band_yt_option2(payment));
		
		
		return "mainView";
	}@RequestMapping("/payment/skt/band YT 세이브")
	public String band_yt_save(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt_band_yt.jsp");
		
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_yt_perfect", service.payment_band_yt_perfect(payment));
		model.addAttribute("band_yt_7g", service.payment_band_yt_7g(payment));
		model.addAttribute("band_yt_3g", service.payment_band_yt_3g(payment));
		model.addAttribute("band_yt_1g", service.payment_band_yt_1g(payment));
		model.addAttribute("band_yt_save", service.payment_band_yt_save(payment));
		model.addAttribute("band_yt_option1", service.payment_band_yt_option1(payment));
		model.addAttribute("band_yt_option2", service.payment_band_yt_option2(payment));
		
		
		return "mainView";
	}
	
	
}
