package com.java.celosia.controller;

import com.java.celosia.model.Product;
import com.java.celosia.repo.ProductRepository;
import com.java.celosia.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

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
        List<Product> basket = productService.getBasket(model);
        basket.add(product);
        model.addAttribute("basket", basket);

        return "redirect:/admin/documents/0";
    }
}
