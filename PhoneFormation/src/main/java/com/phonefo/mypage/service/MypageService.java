package com.phonefo.mypage.service;

import java.util.List;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

public interface MypageService {
	
	
		//������ ����
		public MypageMemberVO myPageMain(String userid)throws Exception;
		
		//������ ����
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//���� 1��1 ���Ǹ���Ʈ
		public List<MypageOnoVO> myPageOnoList(String userid)throws Exception;
		
		//ȸ��Ż��
		public int myPageDel(String userid)throws Exception;

}
