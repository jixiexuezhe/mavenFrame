package com.zjj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {

	@RequestMapping("/index")
	public String index() {
		return "redirect:/homepage/main";
	}

	@RequestMapping("/header")
	public String head() {
		return "/commonpage/header";
	}
}
