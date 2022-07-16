package ro.ebob.oe.repo.entity;

import javax.persistence.*;

@Entity(name = "ProductDescriptionEntity")
@Table(name = "product_descriptions")
public class ProductDescription {
  @EmbeddedId
  private ProductDescriptionId id;

  @MapsId("productId")
  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "product_id", nullable = false)
  private ProductInformation product;

  @Column(name = "translated_name", nullable = false, length = 50)
  private String translatedName;

  @Column(name = "translated_description", nullable = false, length = 2000)
  private String translatedDescription;

  public ProductDescriptionId getId() {
    return id;
  }

  public void setId(ProductDescriptionId id) {
    this.id = id;
  }

  public ProductInformation getProduct() {
    return product;
  }

  public void setProduct(ProductInformation product) {
    this.product = product;
  }

  public String getTranslatedName() {
    return translatedName;
  }

  public void setTranslatedName(String translatedName) {
    this.translatedName = translatedName;
  }

  public String getTranslatedDescription() {
    return translatedDescription;
  }

  public void setTranslatedDescription(String translatedDescription) {
    this.translatedDescription = translatedDescription;
  }

}