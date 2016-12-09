package com.phonefo.mypage.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;
import com.phonefo.mypage.domain.MypageRepairVO;

public interface MypageService {
	
	
		//마이페이지 메인
		public MypageMemberVO myPageMain(HttpSession session)throws Exception;
		
		//마이페이지 수정
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//마이페이지 1대1
		public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
		
		//마이페이지 회원탈퇴
		public int myPageDel(HttpSession session)throws Exception;
		
		//////////////////////////////중고
		//마이페이지 중고견적
		public List<MypageQuoteVO> mypageQuoteList(HttpSession session)throws Exception;
		
		//마이페이지 거래신청한 기업 리스트
		public List<MypagePurchaseVO> mypagePurchase(String no)throws Exception;
		
		//마이페이지 거래할 기업선택
		public int mypagePurchaseChoose(Map<String, String> map)throws Exception;
		
		//마이페이지 거래중인 기업정보
		public MypagePurchaseVO mypagePurchaseIng(String no)throws Exception;
		
		//마이페이지 거래완료업데이트
		public int mypagePurchaseIngChoose(Map<String, String> map)throws Exception;
			
		//마이페이지 거래 완료 목록
		public MypagePurchaseVO mypagePurchaseEnd(String no)throws Exception;
		
		//기업 중고견적 구매 신청 리스트
		public List<MypageQuoteVO> mypageB_QuoteList(HttpSession session)throws Exception;
		
		//거래취소
		public int mypagePurchaseCancel(String no)throws Exception;
		
		////////////////////////////////////////////수리
		//내가올린 수리견적 리스트
		public List<MypageRepairVO> mypageRepairList(HttpSession session)throws Exception;
		
		//마이페이지 거래신청한 기업 리스트
		public List<MypagePurchaseVO> mypageRepairPurchase(String no)throws Exception;
		
		//마이페이지 거래할 기업선택
		public int mypageRepairPurchaseChoose(Map<String, String> map)throws Exception;
		
		//마이페이지 거래중인 기업정보
		public MypagePurchaseVO mypageRepairPurchaseIng(String no)throws Exception;
		
		//마이페이지 거래완료업데이트
		public int mypageRepairPurchaseIngChoose(Map<String, String> map)throws Exception;
			
		//마이페이지 거래 완료 목록
		public MypagePurchaseVO mypageRepairPurchaseEnd(String no)throws Exception;
		
		//기업 중고견적 구매 신청 리스트
		public List<MypageRepairVO> mypageB_RepairList(HttpSession session)throws Exception;

		public void insertCompleteId(String userid)throws Exception;


		public void subCash(String userid)throws Exception;


}
