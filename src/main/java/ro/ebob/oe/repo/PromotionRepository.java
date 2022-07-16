package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.Promotion;

import java.math.BigDecimal;

public interface PromotionRepository extends JpaRepository<Promotion, BigDecimal> {
}