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
		model.addAttribute("list1", service.selectInfo("samsung"));	
		model.addAttribute("list2", service.selectInfo("lg"));	
		model.addAttribute("list3", service.selectInfo("apple"));	
		model.addAttribute("body", "./phone/phoneInfo.jsp");
		return "mainView";
	}
	
	@RequestMapping("/phoneInfo_spec")
	public String phoneInfo_spec(Model model, int no)throws Exception{
		model.addAttribute("list_color", service.select_color(no));
		model.addAttribute("list_capacity", service.select_capacity(no));
		model.addAttribute("list_spec_Info", service.select_spec_Info(no));
		model.addAttribute("list_spec_processor", service.select_spec_processor(no));
		model.addAttribute("list_spec_display", service.select_spec_display(no));
		model.addAttribute("list_spec_camera", service.select_spec_camera(no));
		model.addAttribute("list_spec_memory", service.select_spec_memory(no));
		model.addAttribute("list_spec_network", service.select_spec_network(no));
		model.addAttribute("list_spec_connect", service.select_spec_connect(no));
		model.addAttribute("list_spec_specifications", service.select_spec_specifications(no));
		model.addAttribute("list_spec_battery", service.select_spec_battery(no));
		model.addAttribute("list_spec_audio", service.select_spec_audio(no));
		model.addAttribute("list_spec_service", service.select_spec_service(no));
		model.addAttribute("body", "./phone/phoneInfo_spec.jsp");
		return "mainView";
	}

}
