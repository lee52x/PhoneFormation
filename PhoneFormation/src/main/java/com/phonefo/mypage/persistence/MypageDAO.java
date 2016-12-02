package com.phonefo.mypage.persistence;

import java.util.List;

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
	

}
