package com.phonefo.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminCntVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.SearchCriteria;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession sqlSession;	
	
	@Override//멤버리스트
	public List<AdminMemberVO> listMember(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectList("admin.listMember", cri, new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}

	@Override//멤버리스트카운터
	public int memberSearchCount(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectOne("admin.memberSearchCount",cri);
	}


	@Override//비즈니스멤버리스트
	public List<AdminB_MemberVO> listB_Member(SearchCriteria cri) throws Exception {

		return sqlSession.selectList("admin.listB_Member", cri, new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}

	@Override//비즈니스멤버리스트 카운터
	public int b_memberSearchCount(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectOne("admin.b_memberSearchCount",cri);
	}

	@Override//1대1문의리스트
	public List<AdminOnoBoardVO> listOno(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectList("admin.listOno",cri, new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}
	
	@Override//1대1문의 카운터
	public int OnoSearchCount(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectOne("admin.onoSearchCount",cri);
	}

	@Override//1대1 답변하기
	public int OnoAnser(AdminOnoBoardVO vo) throws Exception {
		
		return sqlSession.update("admin.onoAnser", vo);
	}


	@Override//가입정보 통계
	public List<AdminRouteVO> routeInfo() throws Exception {

		return sqlSession.selectList("admin.routeInfo");
	}

	@Override//가입정보 카운터
	public int routeInfoCnt() throws Exception {
	
		return sqlSession.selectOne("admin.routeInfoCnt");
		
	}

	@Override   //중고 거래성사 카운트
	public int quoteDeal() throws Exception {
		
		return sqlSession.selectOne("admin.quoteDeal");
	}

	@Override  //중고 총금액 카운트
	public List<AdminCntVO> quotePrice() throws Exception {
		
		return sqlSession.selectList("admin.quotePrice");
	}

	@Override  //수리 거래성사 카운트
	public int repairDeal() throws Exception {
		
		return sqlSession.selectOne("admin.repairDeal");
	}

	@Override   //수리 총금액 카운트
	public List<AdminCntVO> repairPrice() throws Exception {
		
		return sqlSession.selectList("admin.repairPrice");
	}



}
