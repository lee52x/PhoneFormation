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
	
	
	//구매신청자 목록 가져오기
	@RequestMapping(value="/purchaseList")
	public List<MypagePurchaseVO> purchaseList(String no)throws Exception{
		
		List<MypagePurchaseVO> list = null;
		
		list =service.mypagePurchase(no);
		
		return list;
		
		
		
	}
	

	//구매업체 선택
	@RequestMapping(value="/purchaseChoose", method=RequestMethod.POST)
	public int purchaseChoose(int no, String userid)throws Exception{
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypagePurchaseChoose(map);
		
		return result;
	}
	
	
	
	//거래중 업체 정보
	@RequestMapping(value="/purchaseIng")
	public MypagePurchaseVO purchaseIng(String no)throws Exception{
		
		MypagePurchaseVO object = null;
		
		object =service.mypagePurchaseIng(no);
		
		return object;
		
		
		
	}
	

	//구매업체 선택
	@RequestMapping(value="/purchaseIngChoose", method=RequestMethod.POST)
	public int purchaseIngChoose(int no, String userid)throws Exception{
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypagePurchaseIngChoose(map);
		
		return result;
	}
	
	
	
	//거래끝난 업체 정보
	@RequestMapping(value="/purchaseEnd")
	public MypagePurchaseVO purchaseEnd(String no)throws Exception{
		
		MypagePurchaseVO object = null;
		
		object =service.mypagePurchaseEnd(no);
		
		return object;
		
		
		
	}
	
	
	
	
	
}
