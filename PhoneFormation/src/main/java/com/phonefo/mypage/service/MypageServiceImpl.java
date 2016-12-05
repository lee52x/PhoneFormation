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
	public List<MypageQuoteVO> mypageQuoteList(HttpSession session) throws Exception {//���������� �߰����
		
		return dao.myPageQuoteList(session);
	}
	@Override
	public int myPageDel(HttpSession session) throws Exception {//���������� ȸ��Ż��
		
		return dao.myPageDel(session);
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


}
