package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.PurchaseOrder;

public interface PurchaseOrderRepository extends JpaRepository<PurchaseOrder, String> {
}