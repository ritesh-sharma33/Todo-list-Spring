package com.codingalaxy.springboot.webapplication.springbootfirstweb.controller;

import com.codingalaxy.springboot.webapplication.springbootfirstweb.services.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

// /login -> "Hello World"

@Controller
@SessionAttributes("name")
public class LoginController {

	@Autowired
	LoginService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginMessage(ModelMap model) {
		model.put("name", "sharmaritesh3312");
		return "welcome";
	}
}
