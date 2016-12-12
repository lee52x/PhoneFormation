package com.phonefo.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.phonefo.board.domain.Criteria;
import com.phonefo.board.domain.PageMaker;
import com.phonefo.board.domain.ReplyVO;
import com.phonefo.main.domain.MemberVO;
import com.phonefo.main.service.MainService;

@RestController
@RequestMapping("/phonefo")
public class MainRestController {
	@Inject
	MainService service;
	@Autowired
    protected JavaMailSender mailSender;
	//일반회원  아이디 중복검사
	@RequestMapping("/checkId")
	public String checkId(String userid)throws Exception{
		
		boolean result=service.checkId(userid);
		  
		if(result==false){
			return "<font color='red'>이미 존재하는 아이디 입니다.</font>";
		}else if(result==true){
			if(!Pattern.matches("^[a-zA-Z0-9]{5,15}$", userid))
				return "<font color='red'>5~15자의 영소문자, 숫자만 사용 가능합니다.</font>";
			else
				return "<font color='blue'>사용 가능한 아이디 입니다</font>";
		}

		return "";
	}

	//패스워드 유효성 검사(일반,기업)
	@RequestMapping("/checkPwd")
	public String checkPwd(String userpwd)throws Exception{
		System.out.println(userpwd);
		if(!Pattern.matches("^[a-zA-Z0-9`~!@#$%^&*()-_=+]{5,15}$", userpwd)){
			return "<font color='red'>5~15자의 영문, 숫자, 특수문자만 사용 가능합니다.</font>";
		}else if(Pattern.matches("^[a-zA-Z0-9]{5,7}$", userpwd)){
			return "<font color='blue'>사용하실 수 있는 비밀번호입니다. (안전도 등급 낮음)</font>";	
		}else {
			return "<font color='blue'>사용하실 수 있는 비밀번호입니다. (안전도 등급 높음)</font>";
		}

	}
	
	//일반회원 로그인
	@RequestMapping("/confirm_member")
	public String confirm_member(String userid,String userpwd,HttpSession session)throws Exception{
		
		boolean result=false;
		result = service.check_general_member(userid, userpwd);
		
		if(result==true){
			MemberVO vo= service.getVO(userid);
			session.setAttribute("userid", userid);
			session.setAttribute("username", vo.getUsername());
			session.setAttribute("tel", vo.getTel());
			session.setAttribute("loginVO", vo);
			session.setAttribute("member", "general");
			
			service.addVisit();
			
			return "성공";
		}else{
			return "실패";
		}
		
	}
	//기업회원 로그인
	@RequestMapping("/confirm_business_member")
	public String confirm_business_member(String userid,String userpwd,HttpSession session)throws Exception{
		
		boolean result=false;
		result = service.check_business_member(userid, userpwd);
		System.out.println(result);
		
		if(result==true){
			MemberVO vo= service.getBVO(userid);
			session.setAttribute("userid", userid);
			session.setAttribute("username", vo.getCompanyName());
			session.setAttribute("loginVO", vo);
			session.setAttribute("member", "business");
			
			service.addVisit();
			return "성공";
		}else{
			return "실패";
		}
		
	}
	//로그아웃
	@RequestMapping("/logout")
	public void logout(HttpSession session)throws Exception{
		session.invalidate();
	
	}
	@RequestMapping("/send_id")
	public ResponseEntity<Map<String, Object>> search_id_result(String username,String email) throws Exception{

		System.out.println("아이디찾기");
		MemberVO vo=new MemberVO();
		vo.setUsername(username);
		vo.setEmail(email);
		
		ResponseEntity<Map<String, Object>> entity = null;
		Map<String, Object> map = new HashMap<>();

		try {
			List<String> id = service.selectid(vo);
			for(int i=0; i< id.size();i++)
				System.out.println(id.get(i));

			if(id.size()==0 )
				map.put("status", "fail");
			else{
				map.put("status", "success");
				map.put("id", id);
			}

			entity = new ResponseEntity<>(map, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	@RequestMapping("/send_password")
	public String search_password(String userid,String email) throws Exception{
		MemberVO vo=new MemberVO();
		vo.setUserid(userid);
		vo.setEmail(email);
		String password = service.selectpassword(vo);
		System.out.println("password="+password);
		if(password==null )
			return"fail";
		else{
			String title="[Phoneformation]   "+userid+"회원님 비밀번호찾기 문의입니다.";
			String content="회원님의 비밀번호는:"+password+"입니다";
			sendmail(email,userid,title,content);
			return "success";
		}
	}
	public void sendmail(String receiver, String name, String title, String content){
		SimpleMailMessage msg = new SimpleMailMessage();
        msg.setFrom("wogus519@gmail.com");
        msg.setTo(new String[] { receiver });
        msg.setSubject(title);
        msg.setText(content);
 
        try {
            mailSender.send(msg);
        } catch (MailException ex) {
            System.out.println("메일실패");
        }
	}
}

