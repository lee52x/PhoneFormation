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

		model.addAttribute("body","./payment/skt/skt.jsp");
		
		model.addAttribute("signiture", service.payment_signiture(payment));
		model.addAttribute("band_yt", service.payment_band_yt(payment));
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("t_together", service.payment_t_together(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T 시그니처 Master")
	public String signiture_master(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_signiture.jsp");
		
		model.addAttribute("signiture", service.payment_signiture(payment));
		model.addAttribute("signiture_master", service.payment_signiture_master(payment));
		model.addAttribute("signiture_classic", service.payment_signiture_classic(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T 시그니처 Classic")
	public String signiture_classic(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_signiture.jsp");
		
		model.addAttribute("signiture", service.payment_signiture(payment));
		model.addAttribute("signiture_master", service.payment_signiture_master(payment));
		model.addAttribute("signiture_classic", service.payment_signiture_classic(payment));
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band YT 퍼펙트")
	public String band_yt_perfect(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_yt.jsp");
		
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
		
		model.addAttribute("body", "./payment/skt/skt_band_yt.jsp");
		
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
		
		model.addAttribute("body", "./payment/skt/skt_band_yt.jsp");
		
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
		
		model.addAttribute("body", "./payment/skt/skt_band_yt.jsp");
		
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
	
	@RequestMapping("/payment/skt/band YT 세이브")
	public String band_yt_save(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_yt.jsp");
		
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
	
	@RequestMapping("/payment/skt/band 데이터 퍼펙트S")
	public String band_data_perfectS(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band 데이터 퍼펙트")
	public String band_data_perfect(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band 데이터 6.5G")
	public String band_data_perfect_6_5g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band 데이터 3.5G")
	public String band_data_perfect_3_5g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band 데이터 2.2G")
	public String band_data_perfect_2_2g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band 데이터 1.2G")
	public String band_data_perfect_1_2g(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/band 데이터 세이브")
	public String band_data_perfect_save(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_band_data.jsp");
		
		model.addAttribute("band_data", service.payment_band_data(payment));
		model.addAttribute("band_data_perfectS", service.payment_band_data_perfectS(payment));
		model.addAttribute("band_data_perfect", service.payment_band_data_perfect(payment));
		model.addAttribute("band_data_6_5g", service.payment_band_data_6_5g(payment));
		model.addAttribute("band_data_3_5g", service.payment_band_data_3_5g(payment));
		model.addAttribute("band_data_2_2g", service.payment_band_data_2_2g(payment));
		model.addAttribute("band_data_1_2g", service.payment_band_data_1_2g(payment));
		model.addAttribute("band_data_save", service.payment_band_data_save(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/전국민 무한 100")
	public String everyone_unlimited_100(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_everyone_unlimited.jsp");
		
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("everyone_unlimited_100", service.payment_everyone_unlimited_100(payment));
		model.addAttribute("everyone_unlimited_85", service.payment_everyone_unlimited_85(payment));
		model.addAttribute("lte_data_80pack", service.payment_lte_data_80pack(payment));
		model.addAttribute("everyone_unlimited_75", service.payment_everyone_unlimited_75(payment));
		model.addAttribute("everyone_unlimited_69", service.payment_everyone_unlimited_69(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/전국민 무한 85")
	public String everyone_unlimited_85(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_everyone_unlimited.jsp");
		
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("everyone_unlimited_100", service.payment_everyone_unlimited_100(payment));
		model.addAttribute("everyone_unlimited_85", service.payment_everyone_unlimited_85(payment));
		model.addAttribute("lte_data_80pack", service.payment_lte_data_80pack(payment));
		model.addAttribute("everyone_unlimited_75", service.payment_everyone_unlimited_75(payment));
		model.addAttribute("everyone_unlimited_69", service.payment_everyone_unlimited_69(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/LTE 데이터 무제한 80팩")
	public String everyone_unlimited_80pack(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_everyone_unlimited.jsp");
		
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("everyone_unlimited_100", service.payment_everyone_unlimited_100(payment));
		model.addAttribute("everyone_unlimited_85", service.payment_everyone_unlimited_85(payment));
		model.addAttribute("lte_data_80pack", service.payment_lte_data_80pack(payment));
		model.addAttribute("everyone_unlimited_75", service.payment_everyone_unlimited_75(payment));
		model.addAttribute("everyone_unlimited_69", service.payment_everyone_unlimited_69(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/전국민 무한 75")
	public String everyone_unlimited_75(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_everyone_unlimited.jsp");
		
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("everyone_unlimited_100", service.payment_everyone_unlimited_100(payment));
		model.addAttribute("everyone_unlimited_85", service.payment_everyone_unlimited_85(payment));
		model.addAttribute("lte_data_80pack", service.payment_lte_data_80pack(payment));
		model.addAttribute("everyone_unlimited_75", service.payment_everyone_unlimited_75(payment));
		model.addAttribute("everyone_unlimited_69", service.payment_everyone_unlimited_69(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/전국민 무한 69")
	public String everyone_unlimited_69(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_everyone_unlimited.jsp");
		
		model.addAttribute("everyone_unlimited", service.payment_everyone_unlimited(payment));
		model.addAttribute("everyone_unlimited_100", service.payment_everyone_unlimited_100(payment));
		model.addAttribute("everyone_unlimited_85", service.payment_everyone_unlimited_85(payment));
		model.addAttribute("lte_data_80pack", service.payment_lte_data_80pack(payment));
		model.addAttribute("everyone_unlimited_75", service.payment_everyone_unlimited_75(payment));
		model.addAttribute("everyone_unlimited_69", service.payment_everyone_unlimited_69(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T끼리 65")
	public String t_together_65(String payment, Model model) throws Exception{
		
		model.addAttribute("body", "./payment/skt/skt_t_together.jsp");
		
		model.addAttribute("t_together", service.payment_t_together(payment));
		model.addAttribute("t_together_65", service.payment_t_together_65(payment));
		model.addAttribute("t_together_55", service.payment_t_together_55(payment));
		model.addAttribute("t_together_45", service.payment_t_together_45(payment));
		model.addAttribute("t_together_35", service.payment_t_together_35(payment));
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T끼리 55")
	public String t_together_55(String payment, Model model) throws Exception{

		model.addAttribute("body", "./payment/skt_t_together.jsp");
		
		model.addAttribute("t_together", service.payment_t_together(payment));
		model.addAttribute("t_together_65", service.payment_t_together_65(payment));
		model.addAttribute("t_together_55", service.payment_t_together_55(payment));
		model.addAttribute("t_together_45", service.payment_t_together_45(payment));
		model.addAttribute("t_together_35", service.payment_t_together_35(payment));
		
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T끼리 45")
	public String t_together_45(String payment, Model model) throws Exception{

		model.addAttribute("body", "./payment/skt_t_together.jsp");
		
		model.addAttribute("t_together", service.payment_t_together(payment));
		model.addAttribute("t_together_65", service.payment_t_together_65(payment));
		model.addAttribute("t_together_55", service.payment_t_together_55(payment));
		model.addAttribute("t_together_45", service.payment_t_together_45(payment));
		model.addAttribute("t_together_35", service.payment_t_together_35(payment));
		
		
		
		return "mainView";
	}
	
	@RequestMapping("/payment/skt/T끼리 35")
	public String t_together_35(String payment, Model model) throws Exception{

		model.addAttribute("body", "./payment/skt_t_together.jsp");
		
		model.addAttribute("t_together", service.payment_t_together(payment));
		model.addAttribute("t_together_65", service.payment_t_together_65(payment));
		model.addAttribute("t_together_55", service.payment_t_together_55(payment));
		model.addAttribute("t_together_45", service.payment_t_together_45(payment));
		model.addAttribute("t_together_35", service.payment_t_together_35(payment));
		
		
		
		return "mainView";
	}
}
