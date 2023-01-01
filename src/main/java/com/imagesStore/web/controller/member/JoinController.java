package com.imagesStore.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/")
public class JoinController {

	
	
	@RequestMapping("agree")
	public String agree() {
		
		return "member.agree";
	}
	
	@RequestMapping("login")
	public String login() {
		
		return "member.login";
	}
	
	@RequestMapping("join")
	public String join() {
		
		return "member.join";
	}
	
	@RequestMapping("confirm")
	public String confirm() {
		
		return "member.confirm";
	}
	
	@RequestMapping("home")
	public String home() {
		
		return "member.home";
	}

	@RequestMapping("find_id")
	public String find_id() {
		
		return "member.find_id";
	}

	@RequestMapping("reissue")
	public String reissue() {
		
		return "member.reissue";
	}
}
