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
    private int guests;
    @Enumerated(EnumType.STRING)
    private EventFormat eventFormat;
    private int budget;
    private LocalDateTime eventDate;
    private int hourDuration;
    private String address;
    private boolean withService;
    private String additionalServices;
    @ManyToMany
    private List<Product> products;
    private String comment;
}
