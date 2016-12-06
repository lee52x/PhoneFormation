package com.phonefo.admin.service;

import java.util.List;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.SearchCriteria;

public interface AdminService {

	//맴버검색어를 통한 리스트 조회
    public List<AdminMemberVO> memberSearchCriteria(SearchCriteria cri)throws Exception;
    //멤버검색 카운트
    public int memberSearchCount(SearchCriteria cri)throws Exception;
    
    //비즈니스맴버검색어를 통한 리스트 조회
    public List<AdminB_MemberVO> b_memberSearchCriteria(SearchCriteria cri)throws Exception;
    //비즈니스멤버검색 카운트
    public int b_memberSearchCount(SearchCriteria cri)throws Exception;
    
    //1대1검색어를 통한 리스트 조회
    public List<AdminOnoBoardVO> onoSearchCriteria(SearchCriteria cri)throws Exception;
    //1대1검색 카운트
    public int onoSearchCount(SearchCriteria cri)throws Exception;
    
    //1대1답변
    public int OnoAnswer(AdminOnoBoardVO vo)throws Exception;
    
    //가입정보 통계
    public AdminRouteVO routeInfo()throws Exception;
    
  
    
}
