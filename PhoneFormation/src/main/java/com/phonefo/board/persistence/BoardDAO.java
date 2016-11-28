package com.phonefo.board.persistence;

import java.util.List;

import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.board.domain.BoardVO;


public interface BoardDAO {
	   //�˻�� ���� ����Ʈ ��ȸ
	   public List<BoardVO> selectlist(SearchCriteria cri, int tno)throws Exception; 
	   public int listCount(int tno) throws Exception;
	   public void insert(BoardVO board)throws Exception;
	   public String selecttitle(int tno) throws Exception;
	   public BoardVO selectpage(int bno);
}
