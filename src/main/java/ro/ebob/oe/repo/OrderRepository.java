package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.Order;

import java.math.BigDecimal;

public interface OrderRepository extends JpaRepository<Order, Long> {
}