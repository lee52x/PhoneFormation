package com.phonefo.mypage.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;

public interface MypageService {
	
	
		//내정보 메인
		public MypageMemberVO myPageMain(HttpSession session)throws Exception;
		
		//내정보 수정
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//내가 1대1 문의리스트
		public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
		
		//내가 중고등록
		public List<MypageQuoteVO> mypageQuoteList(HttpSession session)throws Exception;
		
		//회원탈퇴
		public int myPageDel(HttpSession session)throws Exception;

		//내가 중고견적등록한거 구매신청한 업체 리스트
		public List<MypagePurchaseVO> mypagePurchase(String no)throws Exception;
		
		//판매할 업체 정하는거
		public int mypagePurchaseChoose(Map<String, String> map)throws Exception;
		
		//구매중 업체 정보
		public MypagePurchaseVO mypagePurchaseIng(String no)throws Exception;
		
		//거래완료
		public int mypagePurchaseIngChoose(Map<String, String> map)throws Exception;
			
		//구매중 업체 정보
		public MypagePurchaseVO mypagePurchaseEnd(String no)throws Exception;
		
		////////////////////////////////////////////기업쪽 마이페이지
		
		//기업 중고견적 구매 신청 리스트
		public List<MypageQuoteVO> mypageB_QuoteList(HttpSession session)throws Exception;
		
}
