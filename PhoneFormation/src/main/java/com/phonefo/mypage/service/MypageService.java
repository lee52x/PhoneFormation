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
	
	
		//���������� ����
		public MypageMemberVO myPageMain(HttpSession session)throws Exception;
		
		//���������� ����
		public int myPageUpdate(MypageMemberVO vo)throws Exception;
		
		//���������� 1��1
		public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
		
		//���������� ȸ��Ż��
		public int myPageDel(HttpSession session)throws Exception;
		
		//////////////////////////////�߰�
		//���������� �߰����
		public List<MypageQuoteVO> mypageQuoteList(HttpSession session)throws Exception;
		
		//���������� �ŷ���û�� ��� ����Ʈ
		public List<MypagePurchaseVO> mypagePurchase(String no)throws Exception;
		
		//���������� �ŷ��� �������
		public int mypagePurchaseChoose(Map<String, String> map)throws Exception;
		
		//���������� �ŷ����� �������
		public MypagePurchaseVO mypagePurchaseIng(String no)throws Exception;
		
		//���������� �ŷ��Ϸ������Ʈ
		public int mypagePurchaseIngChoose(Map<String, String> map)throws Exception;
			
		//���������� �ŷ� �Ϸ� ���
		public MypagePurchaseVO mypagePurchaseEnd(String no)throws Exception;
		
		//��� �߰���� ���� ��û ����Ʈ
		public List<MypageQuoteVO> mypageB_QuoteList(HttpSession session)throws Exception;
		
		//�ŷ����
		public int mypagePurchaseCancel(String no)throws Exception;
		
		////////////////////////////////////////////����
		//�����ø� �������� ����Ʈ
		public List<MypageRepairVO> mypageRepairList(HttpSession session)throws Exception;
		
		//���������� �ŷ���û�� ��� ����Ʈ
		public List<MypagePurchaseVO> mypageRepairPurchase(String no)throws Exception;
		
		//���������� �ŷ��� �������
		public int mypageRepairPurchaseChoose(Map<String, String> map)throws Exception;
		
		//���������� �ŷ����� �������
		public MypagePurchaseVO mypageRepairPurchaseIng(String no)throws Exception;
		
		//���������� �ŷ��Ϸ������Ʈ
		public int mypageRepairPurchaseIngChoose(Map<String, String> map)throws Exception;
			
		//���������� �ŷ� �Ϸ� ���
		public MypagePurchaseVO mypageRepairPurchaseEnd(String no)throws Exception;
		
		//��� �߰���� ���� ��û ����Ʈ
		public List<MypageRepairVO> mypageB_RepairList(HttpSession session)throws Exception;

		public void insertCompleteId(String userid)throws Exception;


		public void subCash(String userid)throws Exception;


}
