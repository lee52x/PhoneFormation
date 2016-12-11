package com.phonefo.board.service;

import java.util.List;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.ReplyVO;



public interface ReplyService {   
	public List<ReplyVO> listReply(int bno)throws Exception;
	public int addReply(ReplyVO vo)throws Exception;
	public void modifyReply(ReplyVO vo)throws Exception;
	public int removeReply(ReplyVO vo)throws Exception;
	
	public List<ReplyVO> listReplyPage(int bno, Criteria cri)throws Exception;
	public int count(int bno)throws Exception;
}





