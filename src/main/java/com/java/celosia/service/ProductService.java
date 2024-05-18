package com.java.celosia.service;

import com.java.celosia.model.Product;
import org.springframework.boot.Banner;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService {
    public Map<Product, Integer> getBasket(Model model) {
        Map<Product, Integer> basket = (Map<Product, Integer>) model.getAttribute("basket");
        if (basket == null) {
            basket = new HashMap();
        }

        return basket;
    }
}
