package com.phonefo.board.service;

import com.phonefo.board.domain.BoardGoodVO;

public interface BoardGoodservice {
	public void insert_good(BoardGoodVO vo) throws Exception;
	public int select_count(BoardGoodVO vo) throws Exception;
	public void delete_good(BoardGoodVO vo) throws Exception;
	public int select_good(int bno) throws Exception;
}
