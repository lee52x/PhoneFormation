/**
 * 
 */
package com.phonefo.board.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;
import com.phonefo.board.persistence.BoardDAO;

public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession sqlSession;	
	
	@Override
	public List<BoardVO> listSearch(SearchCriteria cri, int tno) throws Exception {
		return sqlSession.selectList("board.listSearch",tno,
		        new RowBounds(cri.getPageStart(), cri.getPerPageNum()) );
	}
	@Override
	public int listCount(int tno) throws Exception {		
		return sqlSession.selectOne("listCount",tno);
	}
}
