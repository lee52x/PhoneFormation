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
		model.addAttribute("list_spec_Info", service.select_spec_Info(no));
		model.addAttribute("list_Sspec_processor", service.select_Sspec_processor(no));
		model.addAttribute("list_Sspec_processor_value", service.select_Sspec_processor_value(no));
		model.addAttribute("list_Sspec_display", service.select_Sspec_display(no));
		model.addAttribute("list_Sspec_display_value", service.select_Sspec_display_value(no));
		model.addAttribute("list_Sspec_camera", service.select_Sspec_camera(no));
		model.addAttribute("list_Sspec_camera_value", service.select_Sspec_camera_value(no));
		model.addAttribute("list_Sspec_memory", service.select_Sspec_memory(no));
		model.addAttribute("list_Sspec_memory_value", service.select_Sspec_memory_value(no));
		model.addAttribute("list_Sspec_network", service.select_Sspec_network(no));
		model.addAttribute("list_Sspec_network_value", service.select_Sspec_network_value(no));
		model.addAttribute("list_Sspec_connect", service.select_Sspec_connect(no));
		model.addAttribute("list_Sspec_connect_value", service.select_Sspec_connect_value(no));
		model.addAttribute("list_Sspec_specifications", service.select_Sspec_specifications(no));
		model.addAttribute("list_Sspec_specifications_value", service.select_Sspec_specifications_value(no));
		model.addAttribute("list_Sspec_battery", service.select_Sspec_battery(no));
		model.addAttribute("list_Sspec_battery_value", service.select_Sspec_battery_value(no));
		model.addAttribute("list_Sspec_audio", service.select_Sspec_audio(no));
		model.addAttribute("list_Sspec_audio_value", service.select_Sspec_audio_value(no));
		model.addAttribute("list_Sspec_service", service.select_Sspec_service(no));
		model.addAttribute("list_Sspec_service_value", service.select_Sspec_service_value(no));
		model.addAttribute("body", "./phone/phoneInfo_spec.jsp");
		return "mainView";
	}

}
