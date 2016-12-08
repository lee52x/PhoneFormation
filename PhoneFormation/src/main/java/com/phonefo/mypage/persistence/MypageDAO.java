package com.phonefo.mypage.persistence;

import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;
import com.phonefo.mypage.domain.MypageRepairVO;

public interface MypageDAO {
	
	//������ ����
	public MypageMemberVO myPageMain(HttpSession session)throws Exception;
	
	//������ ����
	public int myPageUpdate(MypageMemberVO vo)throws Exception;
	
	//���� 1��1 ���Ǹ���Ʈ
	public List<MypageOnoVO> myPageOnoList(HttpSession session)throws Exception;
	
	//ȸ��Ż�𸮽�Ʈ
	public int myPageDel(HttpSession session)throws Exception;
	
	//////////////////�߰����
	//�����ø� �߰���� ����Ʈ
	public List<MypageQuoteVO> myPageQuoteList(HttpSession session)throws Exception;
	
	//���Ž�û��� ��������
	public List<MypagePurchaseVO> myPagePurchaseList(String no)throws Exception;
	
	//�Ǹž�ü ����
	public int myPagePurchaseChoose(Map<String, String> map)throws Exception;
	
	//�ŷ��� ��ü ������ �̾ƿ���
	public MypagePurchaseVO myPagePurchaseIng(String no)throws Exception;
	
	//�ŷ� �Ϸ�
	public int myPagePurchaseIngChoose(Map<String, String> map)throws Exception;
	
	//�ŷ��� ��ü ������ �̾ƿ���
	public MypagePurchaseVO myPagePurchaseEnd(String no)throws Exception;
	
	//��� �߰���� ���� ��û ����Ʈ
	public List<MypageQuoteVO> myPageB_QuoteList(HttpSession session)throws Exception;
	
	//�ŷ����
	public int myPagePurchaseCancel(String no)throws Exception;
	
	////////////////////////////////��������
	//���� ����������û��� ��������
	public List<MypageRepairVO> myPageRepairList(HttpSession session)throws Exception;
	
	//���Ž�û��� ��������
	public List<MypagePurchaseVO> myPageRepairPurchaseList(String no)throws Exception;
		
	//�Ǹž�ü ����
	public int myPageRepairPurchaseChoose(Map<String, String> map)throws Exception;
		
	//�ŷ��� ��ü ������ �̾ƿ���
	public MypagePurchaseVO myPageRepairPurchaseIng(String no)throws Exception;
		
	//�ŷ� �Ϸ�
	public int myPageRepairPurchaseIngChoose(Map<String, String> map)throws Exception;
		
	//�ŷ��� ��ü ������ �̾ƿ���
	public MypagePurchaseVO myPageRepairPurchaseEnd(String no)throws Exception;
		
	//��� �߰���� ���� ��û ����Ʈ
	public List<MypageRepairVO> myPageB_RepairList(HttpSession session)throws Exception;

	public void insertCompleteId(String userid)throws Exception;


}
