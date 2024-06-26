package com.java.celosia.controller;

import com.java.celosia.model.Request;
import com.java.celosia.repo.RequestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class RequestController {
    private final RequestRepository requestRepository;

    @GetMapping("/requests")
    public String getAllRequest(Model model) {
        List<Request> requests = requestRepository.findAll();
        requests.sort(Comparator.comparing(Request::getId));

        model.addAttribute("requests", requests);

        return "requests";
    }


    @GetMapping("/request/{id}")
    public String getRequestById(@PathVariable Long id, Model model) {
        model.addAttribute("request", requestRepository.findById(id).get());

        return "request";
    }

    @PostMapping("/request/save")
    public String changeRequest(@RequestParam Long id, @RequestParam(required = false) Long additionalPrice, @RequestParam boolean completed, @RequestParam String typePayment) {
        Request request = requestRepository.findById(id).get();
        Long oldPrice = request.getTotalPrice();
        Long oldAddPrice = request.getAdditionalPrice();

        if (Objects.isNull(additionalPrice)) {
            additionalPrice = oldAddPrice;
        }

        request.setTotalPrice(oldPrice + additionalPrice - oldAddPrice);
        request.setAdditionalPrice(additionalPrice);
        request.setCompleted(completed);
        request.setTypePayment(typePayment);

        requestRepository.save(request);
        return "redirect:/admin/requests";
    }

    @GetMapping("/request/products")
    public String getProducts(@RequestParam Long id, Model model) {
        model.addAttribute("products", requestRepository.findById(id).get().getProducts());

        return "productsRequest";
    }

    @PostMapping("/request/delete/{id}")
    public String deleteRequest(@PathVariable Long id) {
        requestRepository.deleteById(id);

        return "redirect:/admin/requests";
    }
}

