package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.ProductDescription;
import ro.ebob.oe.repo.entity.ProductDescriptionId;

public interface ProductDescriptionRepository extends JpaRepository<ProductDescription, ProductDescriptionId> {
}