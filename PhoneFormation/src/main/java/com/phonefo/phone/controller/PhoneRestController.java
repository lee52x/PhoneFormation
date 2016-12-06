package com.phonefo.phone.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.service.PhoneInfoService;

@RestController
@RequestMapping("/phonefo")
public class PhoneRestController {
	
	@Inject
	private PhoneInfoService service;
	
	@RequestMapping(value="/phonechk", method=RequestMethod.POST)
	public List<PhoneInfoVO> phondechkbox(String name)throws Exception{
/*		List<PhoneInfoVO> list1 = null;
		List<PhoneInfoVO> list2 = null;
		for (int i = 0; i < itemArr.size(); i++) {
			System.out.println("get(0) : "+itemArr.get(0));
			System.out.println("get(1) : "+itemArr.get(1));
			list1 = service.select_phone(itemArr.get(0));
			list2 = service.select_phone(itemArr.get(1));
		}*/
/*		list1 = service.select_phone(itemArr.get(1).toString());
		System.out.println(list1);
		list2 = service.select_phone(itemArr.get(2).toString());*/
/*		Map<String, Object> map = new HashMap<>();
			map.put("list1", list1);
			map.put("list2", list2);*/
		List<PhoneInfoVO> list = null;
		list = service.select_phone(name);
		return list;
	}

}
