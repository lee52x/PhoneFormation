package com.phonefo.phone.controller;


import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.service.PhoneInfoService;

@RestController
@RequestMapping("/phonefo")
public class PhoneRestController {
	
	@Inject
	private PhoneInfoService service;
	
	@RequestMapping(value="/phonechk1", method=RequestMethod.POST )
	public PhoneInfoVO phonechk1(int no)throws Exception{
		PhoneInfoVO phone = null;
		phone = service.select_phone(no);
		return phone;
	}

}
