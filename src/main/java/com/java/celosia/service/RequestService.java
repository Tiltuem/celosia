package com.java.celosia.service;

import com.java.celosia.model.Request;
import com.java.celosia.repo.RequestRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class RequestService {
    private final RequestRepository requestRepository;

    public Request createRequest(Request request) {

        return null;
    }
}
