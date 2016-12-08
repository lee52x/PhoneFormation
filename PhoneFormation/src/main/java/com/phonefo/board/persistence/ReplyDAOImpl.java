package com.phonefo.board.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession sqlSession;	
	
	@Override
	public List<ReplyVO> list(int bno) throws Exception {		
		return sqlSession.selectList("reply.list", bno);
	}

	@Override
	public void create(ReplyVO vo) throws Exception {
		int t = sqlSession.insert("reply.create",vo);
		//if(t==1)return true;
		//else return false;
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		sqlSession.update("reply.update",vo);
	}

	@Override
	public void delete(int rno) throws Exception {
		sqlSession.delete("reply.delete", rno);
	}

	@Override
	public List<ReplyVO> listPage(int bno, Criteria cri) throws Exception {
		
		RowBounds bound = new RowBounds(cri.getPageStart(), cri.getPerPageNum());
		
		return sqlSession.selectList("reply.list",bno, bound);
	}

	@Override
	public int count(int bno) throws Exception {
		return sqlSession.selectOne("reply.count",bno);
	}

}
