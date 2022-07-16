package ro.ebob.oe.repo.entity;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;

@Embeddable
public class InventoryId implements Serializable {
  private static final long serialVersionUID = -8025505496284635558L;
  @Column(name = "product_id", nullable = false, precision = 6)
  private BigDecimal productId;

  @Column(name = "warehouse_id", nullable = false, precision = 3)
  private BigDecimal warehouseId;

  public BigDecimal getProductId() {
    return productId;
  }

  public void setProductId(BigDecimal productId) {
    this.productId = productId;
  }

  public BigDecimal getWarehouseId() {
    return warehouseId;
  }

  public void setWarehouseId(BigDecimal warehouseId) {
    this.warehouseId = warehouseId;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
    InventoryId entity = (InventoryId) o;
    return Objects.equals(this.productId, entity.productId) &&
        Objects.equals(this.warehouseId, entity.warehouseId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(productId, warehouseId);
  }

}