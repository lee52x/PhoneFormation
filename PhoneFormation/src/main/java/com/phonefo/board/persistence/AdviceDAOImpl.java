package com.phonefo.board.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.board.domain.AdviceVO;
@Repository
public class AdviceDAOImpl implements AdviceDAO {

	@Inject
	private SqlSession sqlSession;	
	
	@Override
	public void insert(AdviceVO advice) throws Exception {
		System.out.println(advice.getAnswer());
		System.out.println(advice.getCategory());
		System.out.println(advice.getContent());
		System.out.println(advice.getImage());
		System.out.println(advice.getOno());
		System.out.println(advice.getTitle());
		System.out.println(advice.getUserid());
		System.out.println(advice.getAnswer_regdate());
		System.out.println(advice.getRegdate());
		sqlSession.selectOne("advice.insert",advice);
	}

}
