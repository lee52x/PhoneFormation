package com.phonefo.mypage.service;

import java.util.List;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

public interface MypageService {
	
	
		//내정보 메인
		public MypageMemberVO myPageMain(String userid)throws Exception;
		
		//내정보 수정
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//내가 1대1 문의리스트
		public List<MypageOnoVO> myPageOnoList(String userid)throws Exception;
		
		//회원탈퇴
		public int myPageDel(String userid)throws Exception;

}
