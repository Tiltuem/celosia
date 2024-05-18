package com.java.celosia.controller;

import com.java.celosia.model.Product;
import com.java.celosia.model.Request;
import com.java.celosia.repo.ProductRepository;
import com.java.celosia.repo.RequestRepository;
import com.java.celosia.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class RequestController {
    private static final int PAGE_SIZE = 5;
    private final ProductRepository productRepository;
    private final RequestRepository requestRepository;
    private final ProductService productService;

    @PostMapping("/admin/getAllRequests")
    public String getAllRequest(@PathVariable int page, Model model) {
        Page<Request> requests = requestRepository.findAll(PageRequest.of(page, PAGE_SIZE, Sort.by("id")));
        model.addAttribute("requests", requests);

        return "";
    }
}

