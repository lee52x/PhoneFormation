package com.phonefo.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.ReplyVO;
import com.phonefo.board.persistence.BoardDAO;
import com.phonefo.board.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	@Inject
	private BoardDAO b_dao;
	@Override
	public List<ReplyVO> listReply(int bno) throws Exception {
		return dao.list(bno);
	}

	@Override
	public int addReply(ReplyVO vo) throws Exception {
		dao.create(vo);
		b_dao.update_replycnt(vo.getBno());
		return dao.count(vo.getBno());
	}

	@Override
	public void modifyReply(ReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public int removeReply(ReplyVO vo) throws Exception {
		dao.delete(vo.getRno());
		b_dao.update_replycnt(vo.getBno());
		return dao.count(vo.getBno());
	}

	@Override
	public List<ReplyVO> listReplyPage(int bno, Criteria cri) throws Exception {
		return dao.listPage(bno, cri);
	}

	@Override
	public int count(int bno) throws Exception {
		return dao.count(bno);
	}

}
