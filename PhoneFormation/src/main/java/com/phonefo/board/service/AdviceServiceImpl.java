package com.phonefo.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.board.domain.AdviceVO;
import com.phonefo.board.persistence.AdviceDAO;
@Service
public class AdviceServiceImpl implements AdviceService {

	@Inject
	private AdviceDAO dao;
	@Override
	public void insert(AdviceVO advice) throws Exception {
		dao.insert(advice);
	}

}
