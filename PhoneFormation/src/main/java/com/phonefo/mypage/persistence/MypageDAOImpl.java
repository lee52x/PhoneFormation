package com.phonefo.mypage.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;
import com.phonefo.mypage.domain.MypageRepairVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Inject
	private SqlSession sqlSession;	
	
	@Override//마이페이지 메인
	public MypageMemberVO myPageMain(HttpSession session) throws Exception { //마이페이지 메인
		
		MypageMemberVO vo= new MypageMemberVO();
		vo =sqlSession.selectOne("mypage.mypageMemberInfo",session.getAttribute("userid"));
		
		String tel =vo.getTel();
		String telsplit[]= tel.split("-");
	
		String tel1= telsplit[0];
		String tel2= telsplit[1];
		String tel3= telsplit[2];
		
		System.out.println(tel1);
		System.out.println(tel2);
		System.out.println(tel3);
		
		vo.setTel1(tel1);
		vo.setTel2(tel2);
		vo.setTel3(tel3);
		
		return vo;
	}
 
	@Override//마이페이지 수정
	public int myPageUpdate(MypageMemberVO vo) throws Exception { //마이페이지 수정
		
		
		return sqlSession.update("mypage.mypageMemberUp", vo);
	}

	@Override//마이페이지1대1 리스트
	public List<MypageOnoVO> myPageOnoList(HttpSession session) throws Exception { //마이페이지 1대1 리스트
	
		return sqlSession.selectList("mypage.mypageOnoInfo",session.getAttribute("userid"));
	}

	
	@Override//마이페이지회원탈퇴
	public int myPageDel(HttpSession session) throws Exception { // 마이페이지 회원탈퇴
		
		return sqlSession.delete("mypage.mypageMemberDel",session.getAttribute("userid"));
	}

	//////////////////////////////////////////////////////중고견적
	@Override//마이페이지 중고견적등록목록
	public List<MypageQuoteVO> myPageQuoteList(HttpSession session) throws Exception {// 마이페이지 중고
		
		return sqlSession.selectList("mypage.mypageQuoteInfo",session.getAttribute("userid"));
	}
	@Override//마에피이지 중고견적 구매신청한 업체 목록
	public List<MypagePurchaseVO> myPagePurchaseList(String no) throws Exception {
		
		return sqlSession.selectList("mypage.mypagePurchase",no);
	}

	@Override//마이페이지 거래할 기업 선택
	public int myPagePurchaseChoose(Map<String, String> map) throws Exception {
		
		int i=sqlSession.update("mypage.mypagePurchaseChooseQoute", map);
		i+=sqlSession.update("mypage.mypagePurchaseChooseRequest", map);
		
		return i;
	}

	@Override//마이페이지 거래중인 기업정보
	public MypagePurchaseVO myPagePurchaseIng(String no) throws Exception {
		
		return sqlSession.selectOne("mypage.mypagePurchaseIng", no);
	}

	@Override//마이페이지 거래완료
	public int myPagePurchaseIngChoose(Map<String, String> map) throws Exception {
		int i=sqlSession.update("mypage.mypagePurchaseIngChooseQoute",map);
		i+=sqlSession.update("mypage.mypagePurchaseIngChooseRequest",map);
		
		return i;
	}

	@Override//마이페이지 거래완료된 기업정보
	public MypagePurchaseVO myPagePurchaseEnd(String no) throws Exception {
		return sqlSession.selectOne("mypage.mypagePurchaseEnd", no);
	}
	
	@Override//기업 중고견적 구매 신청 리스트
	public List<MypageQuoteVO> myPageB_QuoteList(HttpSession session) throws Exception {
		return sqlSession.selectList("mypage.mypageB_QuoteInfo",session.getAttribute("userid"));
	}

	
	
	////////////////////////수리쪽
	
	@Override//마이페이지 수리견적등록리스트
	public List<MypageRepairVO> myPageRepairList(HttpSession session) throws Exception {

		return sqlSession.selectList("mypage.mypageRepairInfo",session.getAttribute("userid"));
	}
	
	@Override//마에피이지 수리견적 신청한 업체 목록
	public List<MypagePurchaseVO> myPageRepairPurchaseList(String no) throws Exception {
		
		return sqlSession.selectList("mypage.mypageRepairPurchase",no);
	}

	@Override//마이페이지 거래할 기업 선택
	public int myPageRepairPurchaseChoose(Map<String, String> map) throws Exception {
		
		int i=sqlSession.update("mypage.mypagePurchaseChooseRepair", map);
		i+=sqlSession.update("mypage.mypageRepairPurchaseChooseRequest", map);
		
		return i;
	}

	@Override//마이페이지 거래중인 기업정보
	public MypagePurchaseVO myPageRepairPurchaseIng(String no) throws Exception {
		
		return sqlSession.selectOne("mypage.mypageRepairPurchaseIng", no);
	}

	@Override//마이페이지 거래완료
	public int myPageRepairPurchaseIngChoose(Map<String, String> map) throws Exception {
		int i=sqlSession.update("mypage.mypagePurchaseIngChooseRepair",map);
		i+=sqlSession.update("mypage.mypageRepairPurchaseIngChooseRequest",map);
		
		return i;
	}

	@Override//마이페이지 거래완료된 기업정보
	public MypagePurchaseVO myPageRepairPurchaseEnd(String no) throws Exception {
		return sqlSession.selectOne("mypage.mypageRepairPurchaseEnd", no);
	}
	
	@Override//기업 중고견적 구매 신청 리스트
	public List<MypageRepairVO> myPageB_RepairList(HttpSession session) throws Exception {
		return sqlSession.selectList("mypage.mypageB_RepairInfo",session.getAttribute("userid"));
	}
}
