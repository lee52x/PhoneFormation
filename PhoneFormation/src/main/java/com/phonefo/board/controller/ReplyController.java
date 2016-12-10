package com.phonefo.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.PageMaker;
import com.phonefo.board.domain.ReplyVO;
import com.phonefo.board.service.ReplyService;


@RestController // Ajax(��û�� ����) ���� ��Ʈ�ѷ�
@RequestMapping("/board_replies")
public class ReplyController {

	@Inject
	private ReplyService service;

	// ��� �Է� ��û
	@RequestMapping(value = "", method = RequestMethod.POST)
	// method: Ŭ���̾�Ʈ�� ��û���
	public ResponseEntity<String> register(@RequestBody ReplyVO vo,HttpSession session ) {
		// @RequestBody�� ��û���������� ���޵Ǵ� �����Ͱ� JSON�϶� ���!!
		
		//vo.setReplyer((String)session.getAttribute("userid"));
		System.out.println("����" + vo);
		ResponseEntity<String> entity = null;
		try {
			service.addReply(vo);
			
			// �Է��� �� �Ǿ��ٸ�
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);// 200�ڵ�
		} catch (Exception e) {
			e.printStackTrace();
			// �Է½� �����߻�
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);// 400�ڵ�
		}

		return entity;
	}

	// Ư���Խù��� ���� ��� ��� ��Ͽ�û
	@RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	public List<ReplyVO> list(@PathVariable("bno") int bno) {
		// @PathVariable ==> ��ûURL��ο� ���޵� �Ķ���� ������ ���
		System.out.println("bno: " + bno);
		List<ReplyVO> list = null;
		try {
			list = service.listReply(bno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// Ư����ۿ� ���� ����
	@RequestMapping(value = "/{rno}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	// replies/2 ��û ----> 2�� ��ۿ� ���� ����
	public ResponseEntity<String> update(@PathVariable("rno") int rno, @RequestBody ReplyVO vo) {
		// ReplyVO ---> ������ ��� ������ JSON���� ����
		vo.setRno(rno);
		ResponseEntity<String> entity = null;
		try {
			service.modifyReply(vo);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
			// HttpStatus: ��������
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		return entity;
	}

	// Ư����ۿ� ���� ����
	@RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	// replies/2 ��û ----> 2�� ��ۿ� ���� ����
	public ResponseEntity<String> remove(@PathVariable("rno") int rno) {

		ResponseEntity<String> entity = null;
		try {
			service.removeReply(rno);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
			// HttpStatus: ��������
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		return entity;
	}// remove

	// Ư���Խù��� ���� Ư�������� ��� ��Ͽ�û
	@RequestMapping(value = "/{bno}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(@PathVariable("bno") int bno, @PathVariable("page") int page) {
		// @PathVariable ==> ��ûURL��ο� ���޵� �Ķ���� ������ ���
		System.out.println("bno: " + bno);

		ResponseEntity<Map<String, Object>> entity = null;

		Criteria cri = new Criteria();// �⺻������ 1������, �⺻���� ����: 10��

		cri.setPage(page);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		Map<String, Object> map = new HashMap<>();

		try {
			List<ReplyVO> list = service.listReplyPage(bno, cri);
			// Ư���������� ���� ��� ���
			map.put("list", list);

			int replyCount = service.count(bno);
			// ��� ��Ͽ� ���� ����¡ -----> ��ȣ�ޱ�
			pageMaker.setTotalCount(replyCount);

			map.put("pageMaker", pageMaker);

			entity = new ResponseEntity<>(map, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

}
