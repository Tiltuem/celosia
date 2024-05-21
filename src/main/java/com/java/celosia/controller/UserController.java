package com.java.celosia.controller;

import com.java.celosia.model.EventFormat;
import com.java.celosia.model.Request;
import com.java.celosia.repo.ProductRepository;
import com.java.celosia.repo.RequestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/request")
public class UserController {
    private final RequestRepository requestRepository;
    private final ProductRepository productRepository;

    @GetMapping("/new")
    public String newRequest(Model model) {
        model.addAttribute("request", new Request());

        return "add";
    }

    @PostMapping("/add")
    public String saveRequest(Request request, String format) {
        request.setEventFormat(EventFormat.valueOf(format));
        request.setKitchenPrice(0L);
        request.setCostPrice(0L);
        request.setProfit(0L);
        requestRepository.save(request);

        return "add";
    }
}
