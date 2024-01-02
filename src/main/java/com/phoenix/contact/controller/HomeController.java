package com.phoenix.contact.controller;

import com.phoenix.contact.entity.Contact;
import com.phoenix.contact.request.ContactRequest;
import com.phoenix.contact.service.ContactService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/contacts")
public class HomeController {
    @Autowired
    ContactService contactService;
    @GetMapping("/list")
    public String listContacts(Model model) {
        List<Contact> contactList=contactService.getContacts();
        model.addAttribute("contactList", contactList);
        return "listContacts";
    }

    @PostMapping(value = "/add", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String addContact(@ModelAttribute("contact") ContactRequest contactRequest) {
        contactService.addContact(contactRequest);
        return "redirect:/contacts/list";
    }

    @PostMapping(value = "/update/{id}", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String updateContact(@PathVariable("id") String id, @ModelAttribute("contact") ContactRequest contactRequest) {
        contactService.updateContact(id, contactRequest);
       return "redirect:/contacts/list";
    }
    @GetMapping("/delete/{id}")
    public String  deleteContact(@PathVariable("id") String id) {
        contactService.deleteContact(id);
        return "redirect:/contacts/list";
    }
}
