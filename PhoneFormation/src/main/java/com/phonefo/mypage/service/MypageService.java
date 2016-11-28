package com.phonefo.mypage.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

public interface MypageService {
	
	
		//������ ����
		public MypageMemberVO myPageMain(HttpSession session)throws Exception;
		
		//������ ����
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//���� 1��1 ���Ǹ���Ʈ
		public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
		
		//ȸ��Ż��
		public int myPageDel(HttpSession session)throws Exception;

}
