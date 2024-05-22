package com.java.celosia.util;

import com.java.celosia.model.Product;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Component
public class BasketUtil {
    public static List<Long> getBasketPrice(Map<Product, Integer> basket) {
        long sum = 0L;
        long costSum = 0L;

        if (Objects.nonNull(basket)) {
            for (Map.Entry<Product, Integer> entry : basket.entrySet()) {
                sum += (long) entry.getValue() * entry.getKey().getPrice();
                costSum += (long) entry.getValue() * entry.getKey().getCostPrice();
            }
        }

        return List.of(sum, costSum);
    }
}
