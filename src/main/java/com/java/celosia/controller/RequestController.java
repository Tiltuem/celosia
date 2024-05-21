package com.java.celosia.controller;

import com.java.celosia.model.Request;
import com.java.celosia.repo.RequestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class RequestController {
    private final RequestRepository requestRepository;

    @GetMapping("/requests")
    public String getAllRequest(Model model) {
        List<Request> requests = requestRepository.findAll();
        model.addAttribute("requests", requests);

        return "requests";
    }


    @GetMapping("/request/{id}")
    public String getRequestById(@PathVariable Long id, Model model) {
        model.addAttribute("request", requestRepository.findById(id).get());

        return "request";
    }

    @PostMapping("/request/save")
    public String changeRequest(@RequestParam Long id, @RequestParam Long additionalPrice, @RequestParam boolean completed, @RequestParam String typePayment) {
        Request request = requestRepository.findById(id).get();

        request.setAdditionalPrice(additionalPrice);
        request.setCompleted(completed);
        request.setTypePayment(typePayment);

        requestRepository.save(request);
        return "redirect:/admin/requests";
    }
}

