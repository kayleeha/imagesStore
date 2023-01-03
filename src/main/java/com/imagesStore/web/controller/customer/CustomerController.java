package com.imagesStore.web.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer/")
public class CustomerController {

	
	
	@RequestMapping("event")
	public String event() {
		
		return "customer.event";
	}
	
	@RequestMapping("faq")
	public String faq() {
		
		return "customer.faq";
	}
	

}
