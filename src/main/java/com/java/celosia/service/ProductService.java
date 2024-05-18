package com.java.celosia.service;

import com.java.celosia.model.Product;
import org.springframework.boot.Banner;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    public List<Product> getBasket(Model model) {
        List<Product> basket = (List<Product>) model.getAttribute("basket");
        if (basket == null) {
            basket = new ArrayList<>();
        }

        return basket;
    }
}
