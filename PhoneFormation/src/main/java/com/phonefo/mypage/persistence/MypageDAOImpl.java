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
import com.phonefo.mypage.domain.MypageRepairVO;

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

	
	@Override//����������ȸ��Ż��
	public int myPageDel(HttpSession session) throws Exception { // ���������� ȸ��Ż��
		
		return sqlSession.delete("mypage.mypageMemberDel",session.getAttribute("userid"));
	}

	//////////////////////////////////////////////////////�߰����
	@Override//���������� �߰������ϸ��
	public List<MypageQuoteVO> myPageQuoteList(HttpSession session) throws Exception {// ���������� �߰�
		
		return sqlSession.selectList("mypage.mypageQuoteInfo",session.getAttribute("userid"));
	}
	@Override//���������� �߰���� ���Ž�û�� ��ü ���
	public List<MypagePurchaseVO> myPagePurchaseList(String no) throws Exception {
		
		return sqlSession.selectList("mypage.mypagePurchase",no);
	}

	@Override//���������� �ŷ��� ��� ����
	public int myPagePurchaseChoose(Map<String, String> map) throws Exception {
		
		int i=sqlSession.update("mypage.mypagePurchaseChooseQoute", map);
		i+=sqlSession.update("mypage.mypagePurchaseChooseRequest", map);
		
		return i;
	}

	@Override//���������� �ŷ����� �������
	public MypagePurchaseVO myPagePurchaseIng(String no) throws Exception {
		
		return sqlSession.selectOne("mypage.mypagePurchaseIng", no);
	}

	@Override//���������� �ŷ��Ϸ�
	public int myPagePurchaseIngChoose(Map<String, String> map) throws Exception {
		int i=sqlSession.update("mypage.mypagePurchaseIngChooseQoute",map);
		i+=sqlSession.update("mypage.mypagePurchaseIngChooseRequest",map);
		
		return i;
	}

	@Override//���������� �ŷ��Ϸ�� �������
	public MypagePurchaseVO myPagePurchaseEnd(String no) throws Exception {
		return sqlSession.selectOne("mypage.mypagePurchaseEnd", no);
	}
	
	@Override//��� �߰���� ���� ��û ����Ʈ
	public List<MypageQuoteVO> myPageB_QuoteList(HttpSession session) throws Exception {
		return sqlSession.selectList("mypage.mypageB_QuoteInfo",session.getAttribute("userid"));
	}

	
	
	////////////////////////������
	
	@Override//���������� ����������ϸ���Ʈ
	public List<MypageRepairVO> myPageRepairList(HttpSession session) throws Exception {

		return sqlSession.selectList("mypage.mypageRepairInfo",session.getAttribute("userid"));
	}
	
	@Override//���������� �������� ��û�� ��ü ���
	public List<MypagePurchaseVO> myPageRepairPurchaseList(String no) throws Exception {
		
		return sqlSession.selectList("mypage.mypageRepairPurchase",no);
	}

	@Override//���������� �ŷ��� ��� ����
	public int myPageRepairPurchaseChoose(Map<String, String> map) throws Exception {
		
		int i=sqlSession.update("mypage.mypagePurchaseChooseRepair", map);
		i+=sqlSession.update("mypage.mypageRepairPurchaseChooseRequest", map);
		
		return i;
	}

	@Override//���������� �ŷ����� �������
	public MypagePurchaseVO myPageRepairPurchaseIng(String no) throws Exception {
		
		return sqlSession.selectOne("mypage.mypageRepairPurchaseIng", no);
	}

	@Override//���������� �ŷ��Ϸ�
	public int myPageRepairPurchaseIngChoose(Map<String, String> map) throws Exception {
		int i=sqlSession.update("mypage.mypagePurchaseIngChooseRepair",map);
		i+=sqlSession.update("mypage.mypageRepairPurchaseIngChooseRequest",map);
		
		return i;
	}

	@Override//���������� �ŷ��Ϸ�� �������
	public MypagePurchaseVO myPageRepairPurchaseEnd(String no) throws Exception {
		return sqlSession.selectOne("mypage.mypageRepairPurchaseEnd", no);
	}
	
	@Override//��� �߰���� ���� ��û ����Ʈ
	public List<MypageRepairVO> myPageB_RepairList(HttpSession session) throws Exception {
		return sqlSession.selectList("mypage.mypageB_RepairInfo",session.getAttribute("userid"));
	}
}
