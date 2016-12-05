package com.phonefo.mypage.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;

public interface MypageService {
	
	
		//������ ����
		public MypageMemberVO myPageMain(HttpSession session)throws Exception;
		
		//������ ����
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//���� 1��1 ���Ǹ���Ʈ
		public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
		
		//���� �߰���
		public List<MypageQuoteVO> mypageQuoteList(HttpSession session)throws Exception;
		
		//ȸ��Ż��
		public int myPageDel(HttpSession session)throws Exception;

		//���� �߰��������Ѱ� ���Ž�û�� ��ü ����Ʈ
		public List<MypagePurchaseVO> mypagePurchase(String no)throws Exception;
		
		//�Ǹ��� ��ü ���ϴ°�
		public int mypagePurchaseChoose(Map<String, String> map)throws Exception;
		
		//������ ��ü ����
		public MypagePurchaseVO mypagePurchaseIng(String no)throws Exception;
		
		//�ŷ��Ϸ�
		public int mypagePurchaseIngChoose(Map<String, String> map)throws Exception;
			
		//������ ��ü ����
		public MypagePurchaseVO mypagePurchaseEnd(String no)throws Exception;
		
		////////////////////////////////////////////����� ����������
		
		//��� �߰���� ���� ��û ����Ʈ
		public List<MypageQuoteVO> mypageB_QuoteList(HttpSession session)throws Exception;
		
}
