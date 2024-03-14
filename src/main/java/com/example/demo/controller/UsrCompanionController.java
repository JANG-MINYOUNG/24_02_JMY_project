package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrCompanionController {

	@RequestMapping("/usr/companion/list")
	public String showList() {

		return "/usr/companion/list";
	}
}