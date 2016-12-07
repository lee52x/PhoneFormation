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

	//////////////////////////////////////////////// 중고
	// 구매신청자 목록 가져오기
	@RequestMapping(value = "/purchaseList")
	public List<MypagePurchaseVO> purchaseList(String no) throws Exception {

		List<MypagePurchaseVO> list = null;

		list = service.mypagePurchase(no);

		return list;

	}

	// 구매업체 선택
	@RequestMapping(value = "/purchaseChoose", method = RequestMethod.POST)
	public int purchaseChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypagePurchaseChoose(map);

		return result;
	}

	// 거래중 업체 정보
	@RequestMapping(value = "/purchaseIng")
	public MypagePurchaseVO purchaseIng(String no) throws Exception {

		MypagePurchaseVO object = null;

		object = service.mypagePurchaseIng(no);

		return object;

	}

	// 구매업체 선택
	@RequestMapping(value = "/purchaseIngChoose", method = RequestMethod.POST)
	public int purchaseIngChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypagePurchaseIngChoose(map);

		return result;
	}

	// 거래끝난 업체 정보
	@RequestMapping(value = "/purchaseEnd")
	public MypagePurchaseVO purchaseEnd(String no) throws Exception {

		MypagePurchaseVO object = null;

		object = service.mypagePurchaseEnd(no);

		return object;

	}
	
	
	////////////////////////////////////수리
	// 구매신청자 목록 가져오기
	@RequestMapping(value = "/purchaseRepairList")
	public List<MypagePurchaseVO> purchaseRepairList(String no) throws Exception {

		List<MypagePurchaseVO> list = null;

		list = service.mypageRepairPurchase(no);

		return list;

	}

	// 구매업체 선택
	@RequestMapping(value = "/purchaseRepairChoose", method = RequestMethod.POST)
	public int purchaseRepairChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypageRepairPurchaseChoose(map);

		return result;
	}

	// 거래중 업체 정보
	@RequestMapping(value = "/purchaseRepairIng")
	public MypagePurchaseVO purchaseRepairIng(String no) throws Exception {

		MypagePurchaseVO object = null;

		object = service.mypageRepairPurchaseIng(no);

		return object;

	}

	// 구매업체 선택
	@RequestMapping(value = "/purchaseRepairIngChoose", method = RequestMethod.POST)
	public int purchaseRepairIngChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypageRepairPurchaseIngChoose(map);

		return result;
	}

	// 거래끝난 업체 정보
	@RequestMapping(value = "/purchaseRepairEnd")
	public MypagePurchaseVO purchaseRepairEnd(String no) throws Exception {

		MypagePurchaseVO object = null;

		object = service.mypageRepairPurchaseEnd(no);

		return object;

	}
}
