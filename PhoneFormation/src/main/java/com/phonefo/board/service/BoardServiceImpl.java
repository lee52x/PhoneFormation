package com.phonefo.board.service;

import java.util.List;

import javax.inject.Inject;

import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;
import com.phonefo.board.persistence.BoardDAO;

public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO dao;
	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri, int tno) throws Exception {
		return dao.listSearch(cri, tno);
	}
	
	@Override
	public int listCount(int tno) throws Exception {		
		return dao.listCount(tno);
	}

}
