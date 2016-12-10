package com.phonefo.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.mypage.domain.MypagePurchaseVO;
import com.phonefo.mypage.service.MypageService;
import com.phonefo.quote.service.PhoneService;

@RestController
@RequestMapping("/phonefo")
public class MypageRestController {

	@Inject
	MypageService service;

	//////////////////////////////////////////////// �߰�
	// ���Ž�û�� ��� ��������
	@RequestMapping(value = "/purchaseList")
	public List<MypagePurchaseVO> purchaseList(String no) throws Exception {

		List<MypagePurchaseVO> list = null;

		list = service.mypagePurchase(no);

		return list;

	}

	// ���ž�ü ����
	@RequestMapping(value = "/purchaseChoose", method = RequestMethod.POST)
	public int purchaseChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypagePurchaseChoose(map);
		service.insertCompleteId(userid);
		System.out.println("�߽���̴�?");
		

		return result;
	}

	// �ŷ��� ��ü ����
	@RequestMapping(value = "/purchaseIng")
	public MypagePurchaseVO purchaseIng(String no) throws Exception {

		MypagePurchaseVO object = null;

		object = service.mypagePurchaseIng(no);

		return object;

	}

	// ���ž�ü ����   
	@RequestMapping(value = "/purchaseIngChoose", method = RequestMethod.POST)
	public int purchaseIngChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		System.out.println("��ȣ:"+no);
		System.out.println("���̵�:"+userid);
		//�ŷ����� �˾ƿ���
		int quote_price = service.getQuotePrice(no);
		System.out.println("��������:"+quote_price);
		int update_price = quote_price * 10/100;//�ŷ������� 10�ۼ�Ʈ
		//��� ���̵𿡼� cash����
		service.subCash(userid,update_price);
		//������ �� �ø���
		service.addMoney(update_price,0);
		
		
		
		
		int result = service.mypagePurchaseIngChoose(map);
		

		return result;
	}

	// �ŷ����� ��ü ���� , ��� ĳ�� ���� ������ ĳ�� �ø���
	@RequestMapping(value = "/purchaseEnd")
	public MypagePurchaseVO purchaseEnd(String no) throws Exception {
		MypagePurchaseVO object = null;
		object = service.mypagePurchaseEnd(no);
		return object;

	}
	
	//�ŷ����
	@RequestMapping(value="/purchaseCancel", method = RequestMethod.POST)
	public int purchaseCancel(String no)throws Exception{
		
		int result=service.mypagePurchaseCancel(no);
		
		return result;
	}
	
	
	////////////////////////////////////����
	// ���Ž�û�� ��� ��������
	@RequestMapping(value = "/purchaseRepairList")
	public List<MypagePurchaseVO> purchaseRepairList(String no) throws Exception {

		List<MypagePurchaseVO> list = null;

		list = service.mypageRepairPurchase(no);

		return list;

	}

	// ���ž�ü ����
	@RequestMapping(value = "/purchaseRepairChoose", method = RequestMethod.POST)
	public int purchaseRepairChoose(int no, String userid) throws Exception {
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypageRepairPurchaseChoose(map);

		return result;
	}

	// �ŷ��� ��ü ����
	@RequestMapping(value = "/purchaseRepairIng")
	public MypagePurchaseVO purchaseRepairIng(String no) throws Exception {

		MypagePurchaseVO object = null;

		object = service.mypageRepairPurchaseIng(no);

		return object;

	}

	// ���ž�ü ����
	@RequestMapping(value = "/purchaseRepairIngChoose", method = RequestMethod.POST)
	public int purchaseRepairIngChoose(int no, String userid) throws Exception {
		
		///�ŷ��Ϸ� Ȯ�� ������ ����� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		System.out.println("��ȣ:"+no);
		System.out.println("���̵�:"+userid);
		Map<String, String> map = new HashMap<>();
		map.put("no", Integer.toString(no));
		map.put("userid", userid);
		int result = service.mypageRepairPurchaseIngChoose(map);
		
		
		//�������� �˾ƿ���
		int repair_price = service.getRepairPrice(no);
		System.out.println("��������:"+repair_price);
		int update_price = repair_price * 10/100;//�ŷ������� 10�ۼ�Ʈ
		//��� ���̵𿡼� cash����
		service.subCash(userid,update_price);
		System.out.println("����� ����");
		//������ �� �ø���
		service.addMoney(update_price,1);
		System.out.println("������ �� �÷ȴ�");

		return result;
	}

	// �ŷ����� ��ü ����
	@RequestMapping(value = "/purchaseRepairEnd")
	public MypagePurchaseVO purchaseRepairEnd(String no) throws Exception {
		
		MypagePurchaseVO object = null;

		object = service.mypageRepairPurchaseEnd(no);

		return object;

	}
}
