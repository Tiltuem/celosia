package com.java.celosia.controller;

import com.java.celosia.model.Product;
import com.java.celosia.repo.ProductRepository;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import static com.java.celosia.util.BasketUtil.getBasketPrice;

@Controller
@RequiredArgsConstructor
public class ProductController {
    @Autowired
    private HttpSession session;
    private final ProductRepository productRepository;

    @GetMapping("/cart")
    public String getCart() {
        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");
        if (basket == null) {
            basket = new HashMap<>();
        }
        session.setAttribute("basket", basket);
        return "basket";
    }

    @PostMapping("/addProduct")
    public String addToBasket(@RequestParam Long id, @RequestParam String menu) {
        Product product = productRepository.findById(id).get();

        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");

        if (basket == null) {
            basket = new HashMap<>();
        }

        if (basket.containsKey(product)) {
            basket.put(product, basket.get(product) + 1);
        } else {
            basket.put(product, 1);
        }
        session.setAttribute("basketPrice", getBasketPrice(basket).get(0));
        session.setAttribute("basket", basket);

        if (menu.equals("menu")) {
            return "redirect:/menu";
        } else if (menu.equals("cart")) {
            return "redirect:/cart";
        }

        return "redirect:/catering";
    }


    @PostMapping("/deleteProduct")
    public String deleteProduct(@RequestParam Long id) {
        Product product = productRepository.findById(id).get();
        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");

        basket.put(product, basket.get(product) - 1);
        session.setAttribute("basket", basket);
        session.setAttribute("basketPrice", getBasketPrice(basket).get(0));

        return "redirect:/cart";
    }
}
