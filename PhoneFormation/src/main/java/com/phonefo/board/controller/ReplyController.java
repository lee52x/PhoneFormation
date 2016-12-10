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


@RestController // Ajax(요청에 대한) 전용 컨트롤러
@RequestMapping("/board_replies")
public class ReplyController {

	@Inject
	private ReplyService service;

	// 댓글 입력 요청
	@RequestMapping(value = "", method = RequestMethod.POST)
	// method: 클라이언트의 요청방식
	public ResponseEntity<String> register(@RequestBody ReplyVO vo,HttpSession session ) {
		// @RequestBody는 요청페이지에서 전달되는 데이터가 JSON일때 명시!!
		
		//vo.setReplyer((String)session.getAttribute("userid"));
		System.out.println("리플" + vo);
		ResponseEntity<String> entity = null;
		try {
			service.addReply(vo);
			
			// 입력이 잘 되었다면
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);// 200코드
		} catch (Exception e) {
			e.printStackTrace();
			// 입력시 에러발생
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);// 400코드
		}

		return entity;
	}

	// 특정게시물에 대한 모든 댓글 목록요청
	@RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	public List<ReplyVO> list(@PathVariable("bno") int bno) {
		// @PathVariable ==> 요청URL경로에 전달된 파라미터 데이터 얻기
		System.out.println("bno: " + bno);
		List<ReplyVO> list = null;
		try {
			list = service.listReply(bno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// 특정댓글에 대한 수정
	@RequestMapping(value = "/{rno}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	// replies/2 요청 ----> 2번 댓글에 대한 수정
	public ResponseEntity<String> update(@PathVariable("rno") int rno, @RequestBody ReplyVO vo) {
		// ReplyVO ---> 수정할 댓글 정보가 JSON으로 전달
		vo.setRno(rno);
		ResponseEntity<String> entity = null;
		try {
			service.modifyReply(vo);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
			// HttpStatus: 서버상태
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		return entity;
	}

	// 특정댓글에 대한 삭제
	@RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	// replies/2 요청 ----> 2번 댓글에 대한 수정
	public ResponseEntity<String> remove(@PathVariable("rno") int rno) {

		ResponseEntity<String> entity = null;
		try {
			service.removeReply(rno);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
			// HttpStatus: 서버상태
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		return entity;
	}// remove

	// 특정게시물에 대한 특정페이지 댓글 목록요청
	@RequestMapping(value = "/{bno}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(@PathVariable("bno") int bno, @PathVariable("page") int page) {
		// @PathVariable ==> 요청URL경로에 전달된 파라미터 데이터 얻기
		System.out.println("bno: " + bno);

		ResponseEntity<Map<String, Object>> entity = null;

		Criteria cri = new Criteria();// 기본페이지 1페이지, 기본행의 개수: 10개

		cri.setPage(page);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		Map<String, Object> map = new HashMap<>();

		try {
			List<ReplyVO> list = service.listReplyPage(bno, cri);
			// 특정페이지에 대한 댓글 목록
			map.put("list", list);

			int replyCount = service.count(bno);
			// 댓글 목록에 대한 페이징 -----> 번호달기
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
