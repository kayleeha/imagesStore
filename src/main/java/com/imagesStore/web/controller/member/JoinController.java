package com.imagesStore.web.controller.member;

import java.sql.SQLException;
import java.util.List;

import javax.swing.Spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.imagesStore.web.entity.Notice;
import com.imagesStore.web.service.NoticeService;

@Controller
@RequestMapping("/member/join/")
public class JoinController {

	
	
	@RequestMapping("agree")
	public String agree() {
		
		return "member.agree";
	}
	@RequestMapping("join")
	public String join() {
		
		return "member.join";
	}
	@RequestMapping("confirm")
	public String confirm() {
		
		return "member.confirm";
	}

}
