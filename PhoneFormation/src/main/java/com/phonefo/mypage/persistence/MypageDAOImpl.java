package com.phonefo.mypage.persistence;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Inject
	private SqlSession sqlSession;	
	
	@Override
	public MypageMemberVO myPageMain(HttpSession session) throws Exception {
		
		return sqlSession.selectOne("mypage.mypageMemberInfo",session.getAttribute("userid"));
	}
 
	@Override
	public int myPageUpdate(MypageMemberVO vo) throws Exception {

		return sqlSession.update("mypage.mypageMemberUp", vo);
	}

	@Override
	public List<MypageOnoVO> myPageOnoList(HttpSession session) throws Exception {
	
		return sqlSession.selectList("mypage.mypageOnoInfo",session.getAttribute("userid"));
	}

	@Override
	public int myPageDel(HttpSession session) throws Exception {
		
		return sqlSession.delete("mypage.mypageMemberDel",session.getAttribute("userid"));
	}

}
