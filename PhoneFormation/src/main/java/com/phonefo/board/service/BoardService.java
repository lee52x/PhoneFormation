package com.phonefo.board.service;

import java.util.List;

import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;

public interface BoardService {
	
    //�˻�� ���� ����Ʈ ��ȸ
    public List<BoardVO> selectlist(SearchCriteria cri, int tno)throws Exception;
    public int listCount(int tno) throws Exception;
    public String selecttitle(int tno) throws Exception;
    public void insert(BoardVO board) throws Exception;
    public BoardVO selectpage(int bno);
}
