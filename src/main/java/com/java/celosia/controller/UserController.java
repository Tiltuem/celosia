package com.java.celosia.controller;

import com.java.celosia.model.EventFormat;
import com.java.celosia.model.Product;
import com.java.celosia.model.Request;
import com.java.celosia.repo.ProductRepository;
import com.java.celosia.repo.RequestRepository;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
@RequestMapping("/request")
public class UserController {
    @Autowired
    private HttpSession session;
    private final RequestRepository requestRepository;
    private final ProductRepository productRepository;
    private Long sum = 0L;
    private Long costSum = 0L;

    @GetMapping("/new")
    public String newRequest(Model model) {
        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");
        if (Objects.nonNull(basket)) {
            for (Map.Entry<Product, Integer> entry : basket.entrySet()) {
                sum += (long) entry.getValue() * entry.getKey().getPrice();
                costSum += (long) entry.getValue() * entry.getKey().getCostPrice();
            }
        }

        model.addAttribute("request", new Request());
        model.addAttribute("kitchenPrice", String.valueOf(sum));

        return "add";
    }

    @PostMapping("/add")
    public String saveRequest(Request request, String format) {
        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");

        request.setEventFormat(EventFormat.valueOf(format));
        request.setCostPrice(costSum);
        request.setProfit(sum - costSum);
        request.setProducts(basket.keySet().stream().toList());
        requestRepository.save(request);

        return "redirect:/request/new";
    }
}
