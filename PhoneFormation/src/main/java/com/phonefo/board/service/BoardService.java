package com.phonefo.board.service;

import java.util.List;

import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;

public interface BoardService {
	
    //검색어를 통한 리스트 조회
    public List<BoardVO> listSearchCriteria(SearchCriteria cri, int tno)throws Exception;
    public int listCount(int tno) throws Exception;
}
