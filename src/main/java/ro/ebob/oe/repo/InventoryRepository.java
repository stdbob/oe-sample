package ro.ebob.oe.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ro.ebob.oe.repo.entity.Inventory;
import ro.ebob.oe.repo.entity.InventoryId;

public interface InventoryRepository extends JpaRepository<Inventory, InventoryId> {
}