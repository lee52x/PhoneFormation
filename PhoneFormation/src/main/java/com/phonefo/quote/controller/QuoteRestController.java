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
	
	
	//�ڵ��� ����������
	@RequestMapping(value="/machine")
	public List<PhoneVO> samsung(String manufacture)throws Exception{
		
			List<PhoneVO> list=null;
			list = service.machine(manufacture);

		
		return list;
	}
	//�ڵ��� �뷮 ��������
	@RequestMapping(value="/capacity")
	public List<PhoneVO> capacity(String machine)throws Exception{
		
		
		List<PhoneVO> list=null;
		
		list=service.capacity(machine);
		
		return list;
		
	}
	
	
	//�߰��� �������� ���ϱ�
	@RequestMapping(value="/calculator",method=RequestMethod.POST )
	public void calculator(String howsend,String manufacture,String machine,String capacity,String year,
			String month,String power,String glass, String equipment )throws Exception{
		
		///�ش� �ڵ����� ����,�뷮�� ���� ���, ���¥ �ҷ�����
		PhoneVO vo = service.price(machine,capacity);
		System.out.println("�����:"+vo.getRelease_price());
		System.out.println("�뷮"+vo.getCapacity());
		System.out.println("���¥:"+vo.getRelease_date());
		
		
		
		Calendar cal=Calendar.getInstance();
		
		
		
		
		
		int expected_price;
		
		
		
		
	}
}
