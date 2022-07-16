package ro.ebob.oe.repo.entity;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity(name = "OrderItemEntity")
@Table(name = "order_items")
public class OrderItem {
  @EmbeddedId
  private OrderItemId id;

  @MapsId("orderId")
  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "order_id", nullable = false)
  private Order order;

  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "product_id", nullable = false)
  private ProductInformation product;

  @Column(name = "unit_price", precision = 8, scale = 2)
  private BigDecimal unitPrice;

  @Column(name = "quantity", precision = 8)
  private BigDecimal quantity;

  public OrderItemId getId() {
    return id;
  }

  public void setId(OrderItemId id) {
    this.id = id;
  }

  public Order getOrder() {
    return order;
  }

  public void setOrder(Order order) {
    this.order = order;
  }

  public ProductInformation getProduct() {
    return product;
  }

  public void setProduct(ProductInformation product) {
    this.product = product;
  }

  public BigDecimal getUnitPrice() {
    return unitPrice;
  }

  public void setUnitPrice(BigDecimal unitPrice) {
    this.unitPrice = unitPrice;
  }

  public BigDecimal getQuantity() {
    return quantity;
  }

  public void setQuantity(BigDecimal quantity) {
    this.quantity = quantity;
  }

}