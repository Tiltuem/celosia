package com.java.celosia.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Request {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String phoneNumber;
    private String email;
    private Long guests;
    @Enumerated(EnumType.STRING)
    private EventFormat eventFormat;
    private Long budget;
    private LocalDateTime eventDate;
    private Long hourDuration;
    private String address;
    private String additionalServices;
    private Long distance;
    @ManyToMany
    private List<Product> products;
    private String comment;

    private Long kitchenPrice;
    private Long additionalPrice;
    private Long servicePrice;
    private Long distancePrice;
    private Long totalPrice;
    private String typePayment;
    private Long profit;
    private Long costPrice;
    private boolean completed;
}
