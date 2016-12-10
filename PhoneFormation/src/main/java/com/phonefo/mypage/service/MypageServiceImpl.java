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
	public MypageMemberVO myPageMain(HttpSession session) throws Exception {//마이페이지 메인

		return dao.myPageMain(session);
	}

	@Override
	public int myPageUpdate(MypageMemberVO vo) throws Exception {//마이페이지 수정
		

		
		return dao.myPageUpdate(vo);
	}

	@Override
	public List<MypageOnoVO> myPageOnoList(HttpSession session) throws Exception {//마이페이지 1대1
		
		return dao.myPageOnoList(session);
	}

	@Override
	public int myPageDel(HttpSession session) throws Exception {//마이페이지 회원탈퇴
		
		return dao.myPageDel(session);
	}
	
	/////////////////////////////////////중고
	@Override
	public List<MypageQuoteVO> mypageQuoteList(HttpSession session) throws Exception {//마이페이지 중고견적
		
		return dao.myPageQuoteList(session);
	}

	@Override
	public List<MypagePurchaseVO> mypagePurchase(String no) throws Exception {//마이페이지 거래신청한 기업 리스트

		return dao.myPagePurchaseList(no);
	}

	@Override
	public int mypagePurchaseChoose(Map<String, String> map) throws Exception {//마이페이지 거래할 기업선택

		return dao.myPagePurchaseChoose(map);
	}

	@Override
	public MypagePurchaseVO mypagePurchaseIng(String no) throws Exception {//마이페이지 거래중인 기업정보
		
		return dao.myPagePurchaseIng(no);
	}

	@Override
	public int mypagePurchaseIngChoose(Map<String, String> map) throws Exception {//마이페이지 거래완료업데이트
		return dao.myPagePurchaseIngChoose(map);
	}

	@Override//마이페이지 거래 완료 목록
	public MypagePurchaseVO mypagePurchaseEnd(String no) throws Exception {
		return dao.myPagePurchaseEnd(no);
	}

	@Override	//기업 중고견적 구매 신청 리스트
	public List<MypageQuoteVO> mypageB_QuoteList(HttpSession session) throws Exception {
	
		return dao.myPageB_QuoteList(session);
	}
	
	@Override//거래취소
	public int mypagePurchaseCancel(String no) throws Exception {

		return dao.myPagePurchaseCancel(no);
	}
	
	
	////////////////////////////////////////////////////수리
	@Override//게시판 내가올린 수리견적 리스트
	public List<MypageRepairVO> mypageRepairList(HttpSession session) throws Exception {//마이페이지 중고견적
		
		return dao.myPageRepairList(session);
	}
	
	@Override//수리신청 기업 리스트
	public List<MypagePurchaseVO> mypageRepairPurchase(String no) throws Exception {//마이페이지 거래신청한 기업 리스트
		
		return dao.myPageRepairPurchaseList(no);
	}
	
	@Override//마이페이지 거래할 기업선택
	public int mypageRepairPurchaseChoose(Map<String, String> map) throws Exception {//마이페이지 거래할 기업선택
		
		return dao.myPageRepairPurchaseChoose(map);
	}
	
	@Override//마이페이지 거래중인 기업정보
	public MypagePurchaseVO mypageRepairPurchaseIng(String no) throws Exception {//마이페이지 거래중인 기업정보
		
		return dao.myPageRepairPurchaseIng(no);
	}
	
	@Override//마이페이지 거래완료업데이트
	public int mypageRepairPurchaseIngChoose(Map<String, String> map) throws Exception {//마이페이지 거래완료업데이트
		return dao.myPageRepairPurchaseIngChoose(map);
	}
	
	@Override//마에페이제 거래 완료 목록
	public MypagePurchaseVO mypageRepairPurchaseEnd(String no) throws Exception {
		return dao.myPageRepairPurchaseEnd(no);
	}
	
	@Override	//기업 중고견적 구매 신청 리스트
	public List<MypageRepairVO> mypageB_RepairList(HttpSession session) throws Exception {
		
		return dao.myPageB_RepairList(session);
	}

	@Override	// 기업을 승락했을 때
	public void insertCompleteId(String userid) throws Exception {
			dao.insertCompleteId(userid);
		
	}



	@Override
	public int getQuotePrice(int no) throws Exception {
		return dao.getQuotePrice(no);
		
	}
	//기업 돈 빼기
	@Override
	public void subCash(String userid, int update_price) throws Exception {
		dao.subCash(userid,update_price);
		
	}
	//관리자 돈 올리기
	@Override
	public void addMoney(int update_price,int state) throws Exception {
		dao.addMoney(update_price,state);
		
	}

	@Override
	public int getRepairPrice(int no) throws Exception {
		
		return dao.getRepairPrice(no);
	}






}
