package com.phonefo.mypage.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.service.MypageService;
import com.phonefo.quote.service.PhoneService;

@RestController
@RequestMapping("/phonefo")
public class MypageRestController {
	
	@Inject
	MypageService service;
	
	
	//구매신청자 목록 가져오기
	@RequestMapping(value="/purchaseList")
	public List<MypagePurchaseVO> purchaseList(String no)throws Exception{
		
		List<MypagePurchaseVO> list = null;
		
		list =service.mypagePurchase(no);
		
		return list;
		
		
		
	}
}
