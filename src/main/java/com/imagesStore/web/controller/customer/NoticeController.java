package com.imagesStore.web.controller.customer;

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
@RequestMapping("/customer/notice/")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("list")
	public String list(@RequestParam(value="p", defaultValue = "1") Integer page) throws ClassNotFoundException, SQLException {
		System.out.println("page : " + page);
		
		return "notice.list";
	}
	
	@RequestMapping("detail")
	public String detail() {
		
		return "notice.detail";
	}
	
	@RequestMapping("reg")
	public String reg() {
		
		return "notice.reg";
	}
}
