package com.phoenix.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@GetMapping({"/", "login"})
	public String login(@RequestParam(value = "name", defaultValue="Harshal", required = true) String name, Model model) {
		model.addAttribute("name", name);
		return "login";
	}
}
