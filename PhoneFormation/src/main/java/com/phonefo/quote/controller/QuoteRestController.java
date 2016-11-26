package com.phonefo.quote.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
	
	
	//핸드폰 기계명가져오기
	@RequestMapping(value="/machine")
	public List<PhoneVO> samsung(String manufacture)throws Exception{
		
			List<PhoneVO> list=null;
			list = service.machine(manufacture);

		
		return list;
	}
	//핸드폰 용량 가져오기
	@RequestMapping(value="/capacity")
	public List<PhoneVO> capacity(String machine)throws Exception{
		
		
		List<PhoneVO> list=null;
		
		list=service.capacity(machine);
		
		return list;
		
	}
	
	
	//중고폰 견적가격 구하기
	@RequestMapping(value="/calculator",method=RequestMethod.POST )
	public void calculator(String howsend,String manufacture,String machine,String capacity,String year,
			String month,String power,String glass, String equipment )throws Exception{
		
		///해당 핸드폰의 기기명,용량에 따른 출고가, 출고날짜 불러오기
		PhoneVO vo = service.price(machine,capacity);
		System.out.println("출고가격:"+vo.getRelease_price());
		System.out.println("용량"+vo.getCapacity());
		System.out.println("출고날짜:"+vo.getRelease_date());
		
		
		
		Calendar cal=Calendar.getInstance();
		
		
		
		
		
		int expected_price;
		
		
		
		
	}
}
