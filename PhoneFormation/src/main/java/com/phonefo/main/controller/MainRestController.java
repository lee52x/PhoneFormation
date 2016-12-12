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
	//�Ϲ�ȸ��  ���̵� �ߺ��˻�
	@RequestMapping("/checkId")
	public String checkId(String userid)throws Exception{
		
		boolean result=service.checkId(userid);
		  
		if(result==false){
			return "<font color='red'>�̹� �����ϴ� ���̵� �Դϴ�.</font>";
		}else if(result==true){
			if(!Pattern.matches("^[a-zA-Z0-9]{5,15}$", userid))
				return "<font color='red'>5~15���� ���ҹ���, ���ڸ� ��� �����մϴ�.</font>";
			else
				return "<font color='blue'>��� ������ ���̵� �Դϴ�</font>";
		}

		return "";
	}

	//�н����� ��ȿ�� �˻�(�Ϲ�,���)
	@RequestMapping("/checkPwd")
	public String checkPwd(String userpwd)throws Exception{
		System.out.println(userpwd);
		if(!Pattern.matches("^[a-zA-Z0-9`~!@#$%^&*()-_=+]{5,15}$", userpwd)){
			return "<font color='red'>5~15���� ����, ����, Ư�����ڸ� ��� �����մϴ�.</font>";
		}else if(Pattern.matches("^[a-zA-Z0-9]{5,7}$", userpwd)){
			return "<font color='blue'>����Ͻ� �� �ִ� ��й�ȣ�Դϴ�. (������ ��� ����)</font>";	
		}else {
			return "<font color='blue'>����Ͻ� �� �ִ� ��й�ȣ�Դϴ�. (������ ��� ����)</font>";
		}

	}
	
	//�Ϲ�ȸ�� �α���
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
			
			return "����";
		}else{
			return "����";
		}
		
	}
	//���ȸ�� �α���
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
			return "����";
		}else{
			return "����";
		}
		
	}
	//�α׾ƿ�
	@RequestMapping("/logout")
	public void logout(HttpSession session)throws Exception{
		session.invalidate();
	
	}
	@RequestMapping("/send_id")
	public ResponseEntity<Map<String, Object>> search_id_result(String username,String email) throws Exception{

		System.out.println("���̵�ã��");
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
			String title="[Phoneformation]   "+userid+"ȸ���� ��й�ȣã�� �����Դϴ�.";
			String content="ȸ������ ��й�ȣ��:"+password+"�Դϴ�";
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
            System.out.println("���Ͻ���");
        }
	}
}

