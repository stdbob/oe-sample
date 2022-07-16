package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.ProductInformation;

import java.math.BigDecimal;

public interface ProductInformationRepository extends JpaRepository<ProductInformation, BigDecimal> {
}