package com.phonefo.mypage.persistence;

import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;

public interface MypageDAO {
	
	//내정보 메인
	public MypageMemberVO myPageMain(HttpSession session)throws Exception;
	
	//내정보 수정
	public int myPageUpdate(MypageMemberVO vo)throws Exception;
	
	//내가 1대1 문의리스트
	public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
	
	//내가 중고견적 리스트
	public List<MypageQuoteVO> myPageQuoteList(HttpSession session)throws Exception;
	
	//회원탈퇴리스트
	public int myPageDel(HttpSession session)throws Exception;
	
	//구매신청목록 가져오기
	public List<MypagePurchaseVO> myPagePurchaseList(String no)throws Exception;
	
	//판매업체 선택
	public int myPagePurchaseChoose(Map<String, String> map)throws Exception;
	
	//거래중 업체 정보만 뽑아오기
	public MypagePurchaseVO myPagePurchaseIng(String no)throws Exception;
	
	//거래 완료
	public int myPagePurchaseIngChoose(Map<String, String> map)throws Exception;
	
	//거래중 업체 정보만 뽑아오기
	public MypagePurchaseVO myPagePurchaseEnd(String no)throws Exception;
	
	///////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////
	
	//기업 중고견적 구매 신청 리스트
	public List<MypageQuoteVO> myPageB_QuoteList(HttpSession session)throws Exception;
	
	
	

}
