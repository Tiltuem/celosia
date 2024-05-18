package com.java.celosia.repo;

import com.java.celosia.model.Product;
import com.java.celosia.model.Request;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RequestRepository extends JpaRepository<Request, Long> {
}
