package com.phonefo.quote.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.quote.domain.PhoneVO;
import com.phonefo.quote.service.PhoneService;

@RestController
@RequestMapping("/phonefo")
public class QuoteRestController {
	
	@Inject
	PhoneService service;

	@RequestMapping(value="/machine")
	public List<PhoneVO> samsung(String manufacture)throws Exception{
		
		System.out.println(manufacture);
			List<PhoneVO> list=null;
			
			
			
			list = service.machine(manufacture);

		
		return list;
	}

	@RequestMapping(value="/capacity")
	public void capacity(String machine)throws Exception{
		
		
	}

	
}
