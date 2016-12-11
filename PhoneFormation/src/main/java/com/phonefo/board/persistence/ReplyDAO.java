package com.phonefo.board.persistence;

import java.util.List;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.ReplyVO;

public interface ReplyDAO {
	//(특정 게시물 번호에 대한)전체댓글조회
	public List<ReplyVO> list(int bno) throws Exception; 
	
	
	//댓글입력
	public void create(ReplyVO vo) throws Exception;
	
	//댓글수정	
	public void update(ReplyVO vo) throws Exception;
	
	//댓글삭제
	public void delete(int rno)throws Exception;

	//(특정 게시물 번호에 대한)페이지처리한 댓글조회 , 
	public List<ReplyVO> listPage(int bno, Criteria cri) throws Exception; 
	
	//특정 게시물 번호에 대한 전체 댓글 수 조회
	public int count(int bno)throws Exception;
}
