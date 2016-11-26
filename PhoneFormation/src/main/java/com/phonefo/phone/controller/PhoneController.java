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
	public String list(Model model)throws Exception{
		//model.addAttribute("list", service.selectInfo());
		model.addAttribute("body", "./phone/phoneInfo.jsp");
		return "mainView";
	}

}
