package com.phonefo.mypage.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypageQuoteVO;
import com.phonefo.mypage.persistence.MypageDAO;

@Service
public class MypageServiceImpl implements MypageService {


	@Inject
	private MypageDAO dao;
	
	@Override
	public MypageMemberVO myPageMain(HttpSession session) throws Exception {//마이페이지 메인

		return dao.myPageMain(session);
	}

	@Override
	public int myPageUpdate(MypageMemberVO vo) throws Exception {//마이페이지 수정
		

		
		return dao.myPageUpdate(vo);
	}

	@Override
	public List<MypageOnoVO> myPageOnoList(HttpSession session) throws Exception {//마이페이지 1대1
		
		return dao.myPageOnoList(session);
	}

	@Override
	public List<MypageQuoteVO> mypageQuoteList(HttpSession session) throws Exception {//마이페이지 중고견적
		
		return dao.myPageQuoteList(session);
	}
	@Override
	public int myPageDel(HttpSession session) throws Exception {//마이페이지 회원탈퇴
		
		return dao.myPageDel(session);
	}


}
