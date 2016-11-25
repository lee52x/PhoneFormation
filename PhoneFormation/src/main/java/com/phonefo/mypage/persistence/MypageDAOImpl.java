package com.phonefo.mypage.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Inject
	private SqlSession sqlSession;	
	
	@Override
	public MypageMemberVO myPageMain(String userid) throws Exception {
		
		return sqlSession.selectOne("mypage.main",userid);
	}

	@Override
	public int myPageUpdate(MypageMemberVO vo) throws Exception {

		return sqlSession.update("mypage.update", vo);
	}

	@Override
	public List<MypageOnoVO> myPageOnoList(String userid) throws Exception {
	
		return sqlSession.selectList("mypage.onoList", userid);
	}

}
