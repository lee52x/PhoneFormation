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
