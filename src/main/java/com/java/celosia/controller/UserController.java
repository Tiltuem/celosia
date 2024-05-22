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

import java.util.List;
import java.util.Map;
import java.util.Objects;

import static com.java.celosia.util.BasketUtil.getBasketPrice;

@Controller
@RequiredArgsConstructor
@RequestMapping("/request")
public class UserController {
    @Autowired
    private HttpSession session;
    private final RequestRepository requestRepository;

    @GetMapping("/new")
    public String newRequest(Model model) {
        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");


        model.addAttribute("request", new Request());
        model.addAttribute("kitchenPrice", String.valueOf(getBasketPrice(basket).get(0)));

        return "add";
    }

    @PostMapping("/add")
    public String saveRequest(Request request, String format) {
        Map<Product, Integer> basket = (Map<Product, Integer>) session.getAttribute("basket");
        if (Objects.nonNull(basket)) {
            List<Long> value = getBasketPrice(basket);
            request.setCostPrice(value.get(1));
            request.setProfit(value.get(0) - value.get(1));
            request.setProducts(basket.keySet().stream().toList());
        } else {
            request.setCostPrice(0L);
            request.setProfit(0L);
        }
        request.setAdditionalPrice(0L);
        request.setEventFormat(EventFormat.valueOf(format));


        requestRepository.save(request);

        return "redirect:/request/new";
    }
}
