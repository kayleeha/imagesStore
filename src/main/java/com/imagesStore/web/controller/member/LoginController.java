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
@RequestMapping("/member/login/")
public class LoginController {

	
	
	@RequestMapping("login")
	public String login() {
		
		return "member.login";
	}
	
}
