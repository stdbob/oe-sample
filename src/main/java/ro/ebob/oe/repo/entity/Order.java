package ro.ebob.oe.repo.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.OffsetDateTime;

@Entity(name = "OrderEntity")
@Table(name = "orders")
public class Order {
  @Id
  @Column(name = "order_id", nullable = false)
  private Long id;

  @Column(name = "order_date", nullable = false)
  private OffsetDateTime orderDate;

  @Column(name = "order_mode", length = 8)
  private String orderMode;

  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "customer_id", nullable = false)
  private Customer customer;

  @Column(name = "order_status")
  private Integer orderStatus;

  @Column(name = "order_total", precision = 8, scale = 2)
  private BigDecimal orderTotal;

  @Column(name = "sales_rep_id")
  private Integer salesRepId;

  @Column(name = "promotion_id")
  private Integer promotionId;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public OffsetDateTime getOrderDate() {
    return orderDate;
  }

  public void setOrderDate(OffsetDateTime orderDate) {
    this.orderDate = orderDate;
  }

  public String getOrderMode() {
    return orderMode;
  }

  public void setOrderMode(String orderMode) {
    this.orderMode = orderMode;
  }

  public Customer getCustomer() {
    return customer;
  }

  public void setCustomer(Customer customer) {
    this.customer = customer;
  }

  public Integer getOrderStatus() {
    return orderStatus;
  }

  public void setOrderStatus(Integer orderStatus) {
    this.orderStatus = orderStatus;
  }

  public BigDecimal getOrderTotal() {
    return orderTotal;
  }

  public void setOrderTotal(BigDecimal orderTotal) {
    this.orderTotal = orderTotal;
  }

  public Integer getSalesRepId() {
    return salesRepId;
  }

  public void setSalesRepId(Integer salesRepId) {
    this.salesRepId = salesRepId;
  }

  public Integer getPromotionId() {
    return promotionId;
  }

  public void setPromotionId(Integer promotionId) {
    this.promotionId = promotionId;
  }

}