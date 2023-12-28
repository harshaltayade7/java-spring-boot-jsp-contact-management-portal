package com.phoenix.contact.service;

import com.phoenix.contact.entity.Contact;
import com.phoenix.contact.repositories.ContactRepository;
import com.phoenix.contact.request.ContactRequest;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactService {
    @Autowired
    private ContactRepository repository;


    public List<Contact> getContacts() {
        return repository.findAll();
    }

    public void createContact(ContactRequest contactRequest) {
        Contact contact = new Contact();
        contact.setFirstName(contactRequest.getFirstName());
        contact.setLastName(contactRequest.getLastName());
        contact.setCompany(contactRequest.getCompany());
        contact.setEmail(contactRequest.getEmail());
        contact.setPhoneNumber(contactRequest.getPhoneNumber());
        contact.setFirstName(contactRequest.getFirstName());
        repository.save(contact);
    }
    public String updateContact(String id) {
        repository.deleteById(id);
        return "Contact updated successfully";
    }
    public String removeContact(String id) {
        repository.deleteById(id);
        return "Contact deleted successfully";
    }
}
