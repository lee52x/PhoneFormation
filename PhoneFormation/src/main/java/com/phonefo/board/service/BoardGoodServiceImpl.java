package com.phonefo.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.board.domain.BoardGoodVO;
import com.phonefo.board.persistence.BoardDAO;
import com.phonefo.board.persistence.BoardGoodDAO;
@Service
public class BoardGoodServiceImpl implements BoardGoodservice {
	@Inject
	private BoardGoodDAO dao;
	
	@Inject
	private BoardDAO b_dao;
	//-------------------밑에서부터 추가
	@Override
	public void insert_good(BoardGoodVO vo) throws Exception {
		dao.insert_good(vo);
		b_dao.update_goodcnt(vo.getBno());
	}

	@Override
	public int select_count(BoardGoodVO vo) throws Exception {
		return dao.select_count(vo);
	}

	@Override
	public void delete_good(BoardGoodVO vo) throws Exception {
		dao.delete_good(vo);
		b_dao.update_goodcnt(vo.getBno());
	}

	@Override
	public int select_good(int bno) throws Exception {
		return dao.select_good(bno);
	}

}
