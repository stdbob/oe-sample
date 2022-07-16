package ro.ebob.oe.repo.entity;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity(name = "InventoryEntity")
@Table(name = "inventories")
public class Inventory {
  @EmbeddedId
  private InventoryId id;

  @MapsId("productId")
  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "product_id", nullable = false)
  private ProductInformation product;

  @MapsId("warehouseId")
  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "warehouse_id", nullable = false)
  private Warehouse warehouse;

  @Column(name = "quantity_on_hand", nullable = false, precision = 8)
  private BigDecimal quantityOnHand;

  public InventoryId getId() {
    return id;
  }

  public void setId(InventoryId id) {
    this.id = id;
  }

  public ProductInformation getProduct() {
    return product;
  }

  public void setProduct(ProductInformation product) {
    this.product = product;
  }

  public Warehouse getWarehouse() {
    return warehouse;
  }

  public void setWarehouse(Warehouse warehouse) {
    this.warehouse = warehouse;
  }

  public BigDecimal getQuantityOnHand() {
    return quantityOnHand;
  }

  public void setQuantityOnHand(BigDecimal quantityOnHand) {
    this.quantityOnHand = quantityOnHand;
  }

}