package com.phonefo.phone.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.phone.service.PhoneInfoService;

@Controller
@RequestMapping("/phonefo")
public class PhoneController {
	
	@Inject
	private PhoneInfoService service;
	
	@RequestMapping("phoneInfo")
	public String phoneInfo(Model model, String manufacture)throws Exception{
		model.addAttribute("list", service.selectInfo(manufacture));
		model.addAttribute("manufacture", manufacture);
		model.addAttribute("body", "./phone/phoneInfo.jsp");
		return "mainView";
	}
	
	@RequestMapping("/phoneInfo_spec")
	public String phoneInfo_spec(Model model, int no)throws Exception{
		model.addAttribute("list_color", service.select_color(no));
		model.addAttribute("list_capacity", service.select_capacity(no));
		model.addAttribute("list_Sspec_processor", service.select_Sspec_processor(no));
		model.addAttribute("list_Sspec_processor_value", service.select_Sspec_processor_value(no));
		model.addAttribute("list_Sspec_display", service.select_Sspec_display(no));
		model.addAttribute("list_Sspec_display_value", service.select_Sspec_display_value(no));
		model.addAttribute("body", "./phone/phoneInfo_spec.jsp");
		return "mainView";
	}

}
