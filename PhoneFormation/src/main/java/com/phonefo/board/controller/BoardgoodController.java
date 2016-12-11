package com.phonefo.board.controller;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.board.domain.BoardGoodVO;
import com.phonefo.board.service.BoardGoodservice;

@RestController
@RequestMapping("/board_good")
public class BoardgoodController {
	@Inject
	private BoardGoodservice service;

	@RequestMapping(value = "/good", method = RequestMethod.POST)
	public Map<String, Object> good(@RequestBody BoardGoodVO vo) throws Exception {
		Map<String, Object> map = new HashMap<>();
		System.out.println("����");
		System.out.println(vo.getBno());
		System.out.println(vo.getUserid());
		if(service.select_count(vo)==1){
			map.put("status", "�ش� �Խù��� ��õ�� ����Ͽ����ϴ�");
			service.delete_good(vo);
			System.out.println("��õ���");
		}else{ 
			map.put("status", "�ش� �Խù��� ��õ�Ͽ����ϴ�.");
			service.insert_good(vo);
			System.out.println("��õ");
		}
		map.put("goodnum", service.select_good(vo.getBno()));
		return map;
	}
}