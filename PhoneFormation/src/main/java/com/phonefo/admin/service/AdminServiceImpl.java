package com.phonefo.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.admin.domain.AdminB_MemberVO;
import com.phonefo.admin.domain.AdminCntVO;
import com.phonefo.admin.domain.AdminMemberVO;
import com.phonefo.admin.domain.AdminOnoBoardVO;
import com.phonefo.admin.domain.AdminRepairVO;
import com.phonefo.admin.domain.AdminRouteVO;
import com.phonefo.admin.domain.ClientVO;
import com.phonefo.admin.domain.SearchCriteria;
import com.phonefo.admin.domain.SlideVO;
import com.phonefo.admin.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao;

	@Override // 일반멤버검색어리스트
	public List<AdminMemberVO> memberSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listMember(cri);
	}

	@Override // 일반멤버검색카운트
	public int memberSearchCount(SearchCriteria cri) throws Exception {

		return dao.memberSearchCount(cri);
	}

	@Override // 비즈니스멤버검색리스트
	public List<AdminB_MemberVO> b_memberSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listB_Member(cri);
	}

	@Override // 비즈니스멤버검색카운터
	public int b_memberSearchCount(SearchCriteria cri) throws Exception {

		return dao.b_memberSearchCount(cri);
	}

	@Override // 1대1문의검색리스트
	public List<AdminOnoBoardVO> onoSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listOno(cri);
	}

	@Override // 1대1문의검색카운터
	public int onoSearchCount(SearchCriteria cri) throws Exception {

		return dao.OnoSearchCount(cri);
	}

	@Override // 1대1 답변
	public int OnoAnswer(AdminOnoBoardVO vo) throws Exception {

		return dao.OnoAnser(vo);
	}

	@Override // 가입정보 통계
	public AdminRouteVO routeInfo() throws Exception {
		int one = 0;
		int two = 0;
		int three = 0;
		int four = 0;
		int five = 0;
		int six = 0;
		int seven = 0;
		int eight = 0;
		int nine = 0;
		int ten = 0;

		int cnt = dao.routeInfoCnt();
		List<AdminRouteVO> list = dao.routeInfo();

		for (int i = 0; i < list.size(); i++) {

			if (list.get(i).getRoot() == 1) {
				one += 1;
			} else if (list.get(i).getRoot() == 2) {
				two += 1;
			} else if (list.get(i).getRoot() == 3) {
				three += 1;
			} else if (list.get(i).getRoot() == 4) {
				four += 1;
			} else if (list.get(i).getRoot() == 5) {
				five += 1;
			} else if (list.get(i).getRoot() == 6) {
				six += 1;
			} else if (list.get(i).getRoot() == 7) {
				seven += 1;
			} else if (list.get(i).getRoot() == 8) {
				eight += 1;
			} else if (list.get(i).getRoot() == 9) {
				nine += 1;
			} else {
				ten += 1;
			}

		}
		/*
		 * System.out.println(one); System.out.println(two);
		 * System.out.println(three); System.out.println(four);
		 * System.out.println(five); System.out.println(six);
		 * System.out.println(seven); System.out.println(eight);
		 * System.out.println(nine); System.out.println(ten);
		 */

		double onep = one * 100 / cnt;
		double twop = two * 100 / cnt;
		double threep = three * 100 / cnt;
		double fourp = four * 100 / cnt;
		double fivep = five * 100 / cnt;
		double sixp = six * 100 / cnt;
		double sevenp = seven * 100 / cnt;
		double eightp = eight * 100 / cnt;
		double ninep = nine * 100 / cnt;
		double tenp = ten * 100 / cnt;

		AdminRouteVO vo = new AdminRouteVO();

		vo.setOne(onep);
		vo.setTwo(twop);
		vo.setThree(threep);
		vo.setFour(fourp);
		vo.setFive(fivep);
		vo.setSix(sixp);
		vo.setSeven(sevenp);
		vo.setEight(eightp);
		vo.setNine(ninep);
		vo.setTen(tenp);

		return vo;
	}
//
//	@Override
//	public AdminCntVO allStats() throws Exception {
//
//		int quote_price=0;
//
//
//		int repair_price=0;
//
//		
//		List<AdminCntVO> list1 = dao.quotePrice();
//		List<AdminCntVO> list2 = dao.repairPrice();
//
//		int repairDeal=dao.repairDeal();
//		int quoteDeal=dao.quoteDeal();
//		
//		
//		for(int i=0; i<list1.size(); i++){
//			quote_price += list1.get(i).getQuote_price();
//		}
//		
//		for(int i=0; i<list1.size(); i++){
//			repair_price += list2.get(i).getRepair_price();
//		}
//			
//		AdminCntVO vo = new AdminCntVO();
//		vo.setQuote_price(quote_price);
//		vo.setQuoteDeal(quoteDeal);
//		vo.setRepair_price(repair_price);
//		vo.setRepairDeal(repairDeal);
//
//		
//
//		
//		return vo;
//	}
//
//	@Override
//	public void repairInsert(AdminRepairVO vo) throws Exception {
//		dao.repairInsert(vo);
//		
//	}

	@Override
	public int cntSecondHand() throws Exception {
		return dao.cntSecondHand();
	}

	@Override
	public int profitSecondHand() throws Exception {
		return dao.profitSecondHand();
	}

	@Override
	public int cntRepair() throws Exception {
		return dao.cntRepair();
	}

	@Override
	public int profitRepair() throws Exception {
		return dao.profitRepair();
	}

	@Override
	public int TodaycntSecondHand() throws Exception {
		return dao.TodaycntSecondHand();
	}

	@Override
	public int TodayprofitSecondHand() throws Exception {
		return dao.TodayprofitSecondHand();
	}

	@Override
	public int TodaycntRepair() throws Exception {
		return dao.TodaycntRepair();
	}

	@Override
	public int TodayprofitRepair() throws Exception {
		return dao.TodayprofitRepair();
	}

	@Override
	public int totalVisit() throws Exception {
		return dao.totalVisit();
		
	}

	@Override
	public int todayVisit() throws Exception {
		return dao.todayVisit();
		
	}

	@Override
	public void insertRepairPrice(AdminRepairVO vo) throws Exception {
		 dao.insertRepairPrice(vo);
		
	}

	@Override
	public void insertLogo(ClientVO vo) throws Exception {
		dao.insertLogo(vo);
		
	}

	@Override
	public void insertSlide(SlideVO vo) throws Exception {
		dao.insertSlide(vo);
		
	}

	@Override
	public List<SlideVO> getSlide() throws Exception {
		return dao.getSlide();
	}

}
