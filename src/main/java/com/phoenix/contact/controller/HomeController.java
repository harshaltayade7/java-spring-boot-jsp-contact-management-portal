package com.phoenix.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping({"/home"})
    public String home(Model model) {
        String[] headers = {"First Name", "Last Name", "Company", "Email", "Mobile", "Edit", "Delete"};
        model.addAttribute("headers", headers);
        return "home";
    }
}
