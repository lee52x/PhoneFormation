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
		sqlSession.insert("advice.insert",advice);
	}

}
