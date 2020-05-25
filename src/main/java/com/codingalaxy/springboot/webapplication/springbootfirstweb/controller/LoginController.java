package com.codingalaxy.springboot.webapplication.springbootfirstweb.controller;

import com.codingalaxy.springboot.webapplication.springbootfirstweb.services.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

// /login -> "Hello World"

@Controller
@SessionAttributes("name")
public class LoginController {

	@Autowired
	LoginService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginMessage(ModelMap model) {
		// model.put("name", name);
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {

		boolean isUserValidated = service.validateUser(name, password);
		
		if (!isUserValidated) {
			model.put("errorMessage", "Invalid credentials");
			return "login";
		}

		model.put("name", name);
		model.put("password", password);
		return "welcome";
	}

	@RequestMapping("/add")
	public String addTheNumbers(@RequestParam int firstNumber, @RequestParam int secondNumber, ModelMap model) {
		model.put("firstNumber", firstNumber);
		model.put("secondNumber", secondNumber);
		return "addition-page";
	}
}
