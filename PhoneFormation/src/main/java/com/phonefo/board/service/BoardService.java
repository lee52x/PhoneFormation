package com.phonefo.board.service;

import java.util.List;

import com.phonefo.board.domain.SearchCriteria;
import com.phonefo.board.domain.BoardGoodVO;
import com.phonefo.board.domain.BoardVO;

public interface BoardService {

	// 검색어를 통한 리스트 조회
	public List<BoardVO> selectlist(SearchCriteria cri) throws Exception;
	public int listCount(int tno) throws Exception;
	public String selecttitle(int tno) throws Exception;
	public void insert(BoardVO board) throws Exception;
	public BoardVO selectpage(int bno) throws Exception;
	public void delete(int bno) throws Exception;
	public void update(BoardVO board) throws Exception;
	public void update_viewcnt(int bno) throws Exception;
	public int select_prevbno(int bno) throws Exception;
	public int select_nextbno(int bno) throws Exception;
	public String select_title(int bno) throws Exception;
	public List<BoardVO> selectmain()throws Exception;

}
