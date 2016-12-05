package com.phonefo.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.service.MypageService;
import com.phonefo.quote.service.PhoneService;

@RestController
@RequestMapping("/phonefo")
public class MypageRestController {
	
	@Inject
	MypageService service;
	
	
	//���Ž�û�� ��� ��������
	@RequestMapping(value="/purchaseList")
	public List<MypagePurchaseVO> purchaseList(String no)throws Exception{
		
		List<MypagePurchaseVO> list = null;
		
		list =service.mypagePurchase(no);
		
		return list;
		
		
		
	}
	

	//���ž�ü ����
	@RequestMapping(value="/purchaseChoose", method=RequestMethod.POST)
	public int purchaseChoose(int no, String userid)throws Exception{
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypagePurchaseChoose(map);
		
		return result;
	}
	
	
	
	//������ ��ü ����
	@RequestMapping(value="/purchaseIng")
	public MypagePurchaseVO purchaseIng(String no)throws Exception{
		
		MypagePurchaseVO object = null;
		
		object =service.mypagePurchaseIng(no);
		
		return object;
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
}
