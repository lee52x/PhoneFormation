package com.phonefo.mypage.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

public interface MypageService {
	
	
		//내정보 메인
		public MypageMemberVO myPageMain(HttpSession session)throws Exception;
		
		//내정보 수정
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//내가 1대1 문의리스트
		public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
		
		//회원탈퇴
		public int myPageDel(HttpSession session)throws Exception;

}
