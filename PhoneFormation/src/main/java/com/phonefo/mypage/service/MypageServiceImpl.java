package com.phonefo.mypage.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;
import com.phonefo.mypage.domain.MypageRepairVO;
import com.phonefo.mypage.persistence.MypageDAO;

@Service
public class MypageServiceImpl implements MypageService {


	@Inject
	private MypageDAO dao;
	
	@Override
	public MypageMemberVO myPageMain(HttpSession session) throws Exception {//���������� ����

		return dao.myPageMain(session);
	}

	@Override
	public int myPageUpdate(MypageMemberVO vo) throws Exception {//���������� ����
		

		
		return dao.myPageUpdate(vo);
	}

	@Override
	public List<MypageOnoVO> myPageOnoList(HttpSession session) throws Exception {//���������� 1��1
		
		return dao.myPageOnoList(session);
	}

	@Override
	public int myPageDel(HttpSession session) throws Exception {//���������� ȸ��Ż��
		
		return dao.myPageDel(session);
	}
	
	/////////////////////////////////////�߰�
	@Override
	public List<MypageQuoteVO> mypageQuoteList(HttpSession session) throws Exception {//���������� �߰����
		
		return dao.myPageQuoteList(session);
	}

	@Override
	public List<MypagePurchaseVO> mypagePurchase(String no) throws Exception {//���������� �ŷ���û�� ��� ����Ʈ

		return dao.myPagePurchaseList(no);
	}

	@Override
	public int mypagePurchaseChoose(Map<String, String> map) throws Exception {//���������� �ŷ��� �������

		return dao.myPagePurchaseChoose(map);
	}

	@Override
	public MypagePurchaseVO mypagePurchaseIng(String no) throws Exception {//���������� �ŷ����� �������
		
		return dao.myPagePurchaseIng(no);
	}

	@Override
	public int mypagePurchaseIngChoose(Map<String, String> map) throws Exception {//���������� �ŷ��Ϸ������Ʈ
		return dao.myPagePurchaseIngChoose(map);
	}

	@Override//���������� �ŷ� �Ϸ� ���
	public MypagePurchaseVO mypagePurchaseEnd(String no) throws Exception {
		return dao.myPagePurchaseEnd(no);
	}

	@Override	//��� �߰���� ���� ��û ����Ʈ
	public List<MypageQuoteVO> mypageB_QuoteList(HttpSession session) throws Exception {
	
		return dao.myPageB_QuoteList(session);
	}
	
	@Override//�ŷ����
	public int mypagePurchaseCancel(String no) throws Exception {

		return dao.myPagePurchaseCancel(no);
	}
	
	
	////////////////////////////////////////////////////����
	@Override//�Խ��� �����ø� �������� ����Ʈ
	public List<MypageRepairVO> mypageRepairList(HttpSession session) throws Exception {//���������� �߰����
		
		return dao.myPageRepairList(session);
	}
	
	@Override//������û ��� ����Ʈ
	public List<MypagePurchaseVO> mypageRepairPurchase(String no) throws Exception {//���������� �ŷ���û�� ��� ����Ʈ
		
		return dao.myPageRepairPurchaseList(no);
	}
	
	@Override//���������� �ŷ��� �������
	public int mypageRepairPurchaseChoose(Map<String, String> map) throws Exception {//���������� �ŷ��� �������
		
		return dao.myPageRepairPurchaseChoose(map);
	}
	
	@Override//���������� �ŷ����� �������
	public MypagePurchaseVO mypageRepairPurchaseIng(String no) throws Exception {//���������� �ŷ����� �������
		
		return dao.myPageRepairPurchaseIng(no);
	}
	
	@Override//���������� �ŷ��Ϸ������Ʈ
	public int mypageRepairPurchaseIngChoose(Map<String, String> map) throws Exception {//���������� �ŷ��Ϸ������Ʈ
		return dao.myPageRepairPurchaseIngChoose(map);
	}
	
	@Override//���������� �ŷ� �Ϸ� ���
	public MypagePurchaseVO mypageRepairPurchaseEnd(String no) throws Exception {
		return dao.myPageRepairPurchaseEnd(no);
	}
	
	@Override	//��� �߰���� ���� ��û ����Ʈ
	public List<MypageRepairVO> mypageB_RepairList(HttpSession session) throws Exception {
		
		return dao.myPageB_RepairList(session);
	}

	@Override	// ����� �¶����� ��
	public void insertCompleteId(String userid) throws Exception {
			dao.insertCompleteId(userid);
		
	}



	@Override
	public int getQuotePrice(int no) throws Exception {
		return dao.getQuotePrice(no);
		
	}
	//��� �� ����
	@Override
	public void subCash(String userid, int update_price) throws Exception {
		dao.subCash(userid,update_price);
		
	}
	//������ �� �ø���
	@Override
	public void addMoney(int update_price,int state) throws Exception {
		dao.addMoney(update_price,state);
		
	}

	@Override
	public int getRepairPrice(int no) throws Exception {
		
		return dao.getRepairPrice(no);
	}






}
