package com.java.celosia.controller;

import com.java.celosia.repo.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {
    private final ProductRepository productRepository;

    @GetMapping("/")
    public String homePage() {
        return "redirect:/catering";
    }

    @GetMapping("/catering")
    public String cateringPage(Model model) {
        model.addAttribute("products", productRepository.findAll().stream().limit(4));
        return "catering";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }


    @GetMapping("/menu")
    public String getMenu(Model model) {
        model.addAttribute("products", productRepository.findAll());
        return "menu";
    }
}
