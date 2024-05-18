package com.java.celosia.controller;

import com.java.celosia.model.Product;
import com.java.celosia.repo.ProductRepository;
import com.java.celosia.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductRepository productRepository;
    private final ProductService productService;

    @GetMapping("/products")
    public String getMenu(Model model) {
         model.addAttribute("products", productRepository.findAll());
         return "a";
    }

    @PostMapping("/addProduct")
    public String addProduct(Product product, Model model) {
        Map<Product, Integer> basket = productService.getBasket(model);

        if (basket.containsKey(product)) {
            basket.put(product, basket.get(product) + 1);
        } else {
            basket.put(product, 1);
        }
        model.addAttribute("basket", basket);

        return "redirect:/admin/documents/0";
    }

    @PostMapping("/deleteProduct")
    public String deleteProduct(Product product, Model model) {
        Map<Product, Integer> basket = productService.getBasket(model);
        basket.put(product, basket.get(product) - 1);
        model.addAttribute("basket", basket);

        return "redirect:/admin/documents/0";
    }
}
