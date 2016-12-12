package com.phonefo.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.board.domain.SearchCriteria;
import com.phonefo.board.domain.BoardGoodVO;
import com.phonefo.board.domain.BoardVO;
import com.phonefo.board.persistence.BoardDAO;
@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO dao;
	@Override
	public List<BoardVO> selectlist(SearchCriteria cri) throws Exception {
		return dao.selectlist(cri);
	}
	
	@Override
	public int listCount(int tno) throws Exception {		
		return dao.listCount(tno);
	}

	@Override
	public String selecttitle(int tno) throws Exception {
		return dao.selecttitle(tno);
	}
  
	@Override
	public void insert(BoardVO board) throws Exception {
		dao.insert(board);
	}

	@Override
	public BoardVO selectpage(int bno) throws Exception{
		return dao.selectpage(bno);
	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public void update(BoardVO board) throws Exception {
		dao.update(board);
	}

	@Override
	public void update_viewcnt(int bno) throws Exception {
		dao.update_viewcnt(bno);
		
	}

	@Override
	public int select_prevbno(int bno) throws Exception {
		return dao.select_prevbno(bno);
	}

	@Override
	public int select_nextbno(int bno) throws Exception {
		return dao.select_nextbno(bno);
	}

	@Override
	public String select_title(int bno) throws Exception {
		return dao.select_title(bno);
	}

}
