package com.codingalaxy.springboot.webapplication.springbootfirstweb.services;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
  public boolean validateUser(String userId, String password) {
		return userId.equalsIgnoreCase("sharmaritesh3312") && password.equalsIgnoreCase("123456");
	}
}