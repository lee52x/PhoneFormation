package com.phonefo.board.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.board.domain.BoardGoodVO;
@Repository
public class BoardGoodDAOImpl implements BoardGoodDAO {
	@Inject
	private SqlSession sqlSession;	
	@Override
	public void insert_good(BoardGoodVO vo) throws Exception {
		 sqlSession.insert("board.insert_good", vo);
	}
	@Override
	public int select_count(BoardGoodVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.select_count", vo);
	}
	@Override
	public void delete_good(BoardGoodVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("board.delete_good", vo);
	}
	@Override
	public int select_good(int bno) throws Exception {
		return sqlSession.selectOne("board.select_good", bno);
	}

}
