package ro.ebob.oe.repo.entity;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;

@Embeddable
public class OrderItemId implements Serializable {
  private static final long serialVersionUID = -8558832286885663220L;
  @Column(name = "order_id", nullable = false, precision = 12)
  private BigDecimal orderId;

  @Column(name = "line_item_id", nullable = false, precision = 3)
  private BigDecimal lineItemId;

  public BigDecimal getOrderId() {
    return orderId;
  }

  public void setOrderId(BigDecimal orderId) {
    this.orderId = orderId;
  }

  public BigDecimal getLineItemId() {
    return lineItemId;
  }

  public void setLineItemId(BigDecimal lineItemId) {
    this.lineItemId = lineItemId;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
    OrderItemId entity = (OrderItemId) o;
    return Objects.equals(this.orderId, entity.orderId) &&
        Objects.equals(this.lineItemId, entity.lineItemId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(orderId, lineItemId);
  }

}