package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.CategoriesTab;

import java.math.BigDecimal;

public interface CategoriesTabRepository extends JpaRepository<CategoriesTab, BigDecimal> {
}