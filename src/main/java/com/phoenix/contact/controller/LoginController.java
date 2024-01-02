package com.phoenix.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@GetMapping({"/login"})
	public String showLoginForm() {
		return "login";
	}
	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, Model model) {
		if("user".equals(username) && "password".equals(password)) {
			model.addAttribute("username", username);
			return "redirect:/contacts/list";
		} else {
			model.addAttribute("error", "Invalid username or password");
			return "login";
		}
	}

	@GetMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("username", "");
		return "login";
	}
}
