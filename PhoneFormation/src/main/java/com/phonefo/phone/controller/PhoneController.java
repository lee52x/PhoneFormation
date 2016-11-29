package com.phonefo.phone.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phonefo.phone.service.PhoneInfoService;

@Controller
@RequestMapping("/phone")
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
	public String phoneInfo_spec()throws Exception{
		return "mainView";
	}

}
