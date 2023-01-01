package com.imagesStore.web.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer/faq/")
public class FAQController {

	@RequestMapping("faq")
	public String faq() {
		
		return "customer.faq";
	}
}
