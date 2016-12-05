package com.phonefo.mypage.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.mypage.domain.MypageMemberVO;
import com.phonefo.mypage.domain.MypageOnoVO;
import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.domain.MypageQuoteVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Inject
	private SqlSession sqlSession;	
	
	@Override//���������� ����
	public MypageMemberVO myPageMain(HttpSession session) throws Exception { //���������� ����
		
		MypageMemberVO vo= new MypageMemberVO();
		vo =sqlSession.selectOne("mypage.mypageMemberInfo",session.getAttribute("userid"));
		
		String tel =vo.getTel();
		String telsplit[]= tel.split("-");
	
		String tel1= telsplit[0];
		String tel2= telsplit[1];
		String tel3= telsplit[2];
		
		System.out.println(tel1);
		System.out.println(tel2);
		System.out.println(tel3);
		
		vo.setTel1(tel1);
		vo.setTel2(tel2);
		vo.setTel3(tel3);
		
		return vo;
	}
 
	@Override//���������� ����
	public int myPageUpdate(MypageMemberVO vo) throws Exception { //���������� ����
		
		
		return sqlSession.update("mypage.mypageMemberUp", vo);
	}

	@Override//����������1��1 ����Ʈ
	public List<MypageOnoVO> myPageOnoList(HttpSession session) throws Exception { //���������� 1��1 ����Ʈ
	
		return sqlSession.selectList("mypage.mypageOnoInfo",session.getAttribute("userid"));
	}

	@Override//���������� �߰������ϸ��
	public List<MypageQuoteVO> myPageQuoteList(HttpSession session) throws Exception {// ���������� �߰�

		return sqlSession.selectList("mypage.mypageQuoteInfo",session.getAttribute("userid"));
	}
	
	@Override//����������ȸ��Ż��
	public int myPageDel(HttpSession session) throws Exception { // ���������� ȸ��Ż��
		
		return sqlSession.delete("mypage.mypageMemberDel",session.getAttribute("userid"));
	}

	@Override//���������� �߰���� ���Ž�û�� ��ü ���
	public List<MypagePurchaseVO> myPagePurchaseList(String no) throws Exception {
		
		return sqlSession.selectList("mypage.mypagePurchase",no);
	}

	@Override
	public int myPagePurchaseChoose(Map<String, String> map) throws Exception {
		
		int i=sqlSession.update("mypage.mypagePurchaseChooseQoute", map);
		i+=sqlSession.update("mypage.mypagePurchaseChooseRequest", map);
		
		return i;
	}

	@Override
	public MypagePurchaseVO myPagePurchaseIng(String no) throws Exception {
		
		return sqlSession.selectOne("mypage.mypagePurchaseIng", no);
	}


}
