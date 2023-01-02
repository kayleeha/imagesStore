package com.imagesStore.web.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer/event/")
public class EventController {

	
	
	@RequestMapping("list")
	public String list() {
		
		return "customer.list";
	}
	

}
