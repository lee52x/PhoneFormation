package com.phonefo.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.SearchCriteria;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession sqlSession;	
	
	@Override//�������Ʈ
	public List<AdminMemberVO> listMember(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectList("admin.listMember", cri, new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}

	@Override//�������Ʈī����
	public int memberSearchCount(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectOne("admin.memberSearchCount",cri);
	}


	@Override//����Ͻ��������Ʈ
	public List<AdminB_MemberVO> listB_Member(SearchCriteria cri) throws Exception {

		return sqlSession.selectList("admin.listB_Member", cri, new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}

	@Override//����Ͻ��������Ʈ ī����
	public int b_memberSearchCount(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectOne("admin.b_memberSearchCount",cri);
	}

	@Override//1��1���Ǹ���Ʈ
	public List<AdminOnoBoardVO> listOno(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectList("admin.listOno",cri, new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}
	
	@Override//1��1���� ī����
	public int OnoSearchCount(SearchCriteria cri) throws Exception {
		
		return sqlSession.selectOne("admin.onoSearchCount",cri);
	}

	@Override//1��1 �亯�ϱ�
	public int OnoAnser(AdminOnoBoardVO vo) throws Exception {
		
		return sqlSession.update("admin.onoAnser", vo);
	}


	@Override//�������� ���
	public List<AdminRouteVO> routeInfo() throws Exception {

		return sqlSession.selectList("admin.routeInfo");
	}

	@Override//�������� ī����
	public int routeInfoCnt() throws Exception {
	
		return sqlSession.selectOne("admin.routeInfoCnt");
		
	}



}
