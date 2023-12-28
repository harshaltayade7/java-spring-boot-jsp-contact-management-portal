package com.phoenix.contact.controller;

import com.phoenix.contact.entity.Contact;
import com.phoenix.contact.request.ContactRequest;
import com.phoenix.contact.service.ContactService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@AllArgsConstructor
@Controller
public class HomeController {
    @Autowired
    ContactService contactService;
    @GetMapping("/contacts")
    public String contacts(Model model) {
        List<Contact> contactList=contactService.getContacts();
        model.addAttribute("contactList", contactList);
        return "contacts";
    }

    @PostMapping("/contacts")
    public void createContact(@RequestBody ContactRequest contactRequest, Model model) {
        contactService.createContact(contactRequest);
    }

//    @PutMapping("/contacts/{id}")
//    public String updateContact(@PathVariable("id") String id) {
//        contactService.updateContact(id);
//        return "redirect:/contacts";
//    }
    @RequestMapping(value = "/contacts/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public void removeContact(@PathVariable("id") String id) {
        contactService.removeContact(id);
    }
}
