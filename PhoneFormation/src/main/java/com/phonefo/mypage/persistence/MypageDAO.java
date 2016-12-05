package com.phonefo.mypage.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;

public interface MypageDAO {
	
	//������ ����
	public MypageMemberVO myPageMain(HttpSession session)throws Exception;
	
	//������ ����
	public int myPageUpdate(MypageMemberVO vo)throws Exception;
	
	//���� 1��1 ���Ǹ���Ʈ
	public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
	
	//���� �߰���� ����Ʈ
	public List<MypageQuoteVO> myPageQuoteList(HttpSession session)throws Exception;
	
	//ȸ��Ż�𸮽�Ʈ
	public int myPageDel(HttpSession session)throws Exception;
	
	//���Ž�û��� ��������
	public List<MypagePurchaseVO> myPagePurchaseList(String no)throws Exception;
	
	//�Ǹž�ü ����
	public int myPagePurchaseChoose(Map<String, String> map)throws Exception;
	
	//�ŷ��� ��ü ��ϸ� �̾ƿ���
	public MypagePurchaseVO myPagePurchaseIng(String no)throws Exception;

}
