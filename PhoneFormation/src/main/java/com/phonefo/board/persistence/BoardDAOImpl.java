package com.phonefo.board.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.board.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;
import com.phonefo.board.persistence.BoardDAO;
@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession sqlSession;	
	
	@Override
	public List<BoardVO> selectlist(SearchCriteria cri) throws Exception {
		return sqlSession.selectList("board.selectlist",cri,
		        new RowBounds(cri.getPageStart(), cri.getPerPageNum()) );
	}
	@Override
	public int listCount(int tno) throws Exception {		
		return sqlSession.selectOne("board.listcount",tno);
	}
	@Override
	public void insert(BoardVO board) throws Exception {	
		System.out.println("bno"+board.getBno());
		System.out.println("content"+board.getContent());
		System.out.println("image"+board.getImage());
		System.out.println("title"+board.getTitle());
		System.out.println("tno"+board.getTno());
		System.out.println("viewcnt"+board.getViewcnt());
		System.out.println("writer"+board.getWriter());
		System.out.println("regdate"+board.getRegdate());
		
		sqlSession.insert("board.insert",board);
	}
	@Override
	public String selecttitle(int tno) throws Exception {
		return sqlSession.selectOne("board.selecttitle",tno);
	}
	@Override
	public BoardVO selectpage(int bno) throws Exception{
		return sqlSession.selectOne("board.selectpage", bno);
	}
	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("board.delete", bno);
		
	}
	@Override
	public void update(BoardVO board) throws Exception {
		sqlSession.update("board.update",board);
	}
	@Override
	public void update_viewcnt(int bno) throws Exception {
		sqlSession.update("board.update_viewcnt",bno);
		
	}
}
