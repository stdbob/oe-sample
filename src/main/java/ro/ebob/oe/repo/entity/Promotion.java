package ro.ebob.oe.repo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity(name = "PromotionEntity")
@Table(name = "promotions")
public class Promotion {
  @Id
  @Column(name = "promo_id", nullable = false, precision = 6)
  private BigDecimal id;

  @Column(name = "promo_name", length = 20)
  private String promoName;

  public BigDecimal getId() {
    return id;
  }

  public void setId(BigDecimal id) {
    this.id = id;
  }

  public String getPromoName() {
    return promoName;
  }

  public void setPromoName(String promoName) {
    this.promoName = promoName;
  }

}