package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.Customer;

import java.math.BigDecimal;

public interface CustomerRepository extends JpaRepository<Customer, BigDecimal> {
}