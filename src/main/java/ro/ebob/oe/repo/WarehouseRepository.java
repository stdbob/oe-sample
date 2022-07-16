package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.Warehouse;

import java.math.BigDecimal;

public interface WarehouseRepository extends JpaRepository<Warehouse, BigDecimal> {
}