package ro.ebob.oe.repo.entity;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;

@Embeddable
public class ProductDescriptionId implements Serializable {
  private static final long serialVersionUID = -5204474292532206449L;
  @Column(name = "product_id", nullable = false)
  private Long productId;

  @Column(name = "language_id", nullable = false, length = 3)
  private String languageId;

  public Long getProductId() {
    return productId;
  }

  public void setProductId(Long productId) {
    this.productId = productId;
  }

  public String getLanguageId() {
    return languageId;
  }

  public void setLanguageId(String languageId) {
    this.languageId = languageId;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
    ProductDescriptionId entity = (ProductDescriptionId) o;
    return Objects.equals(this.productId, entity.productId) &&
        Objects.equals(this.languageId, entity.languageId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(productId, languageId);
  }

}