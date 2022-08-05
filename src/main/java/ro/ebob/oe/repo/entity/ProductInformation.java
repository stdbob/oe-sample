package ro.ebob.oe.repo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity(name = "ProductInformationEntity")
@Table(name = "product_information")
public class ProductInformation {
  @Id
  @Column(name = "product_id", nullable = false, precision = 6)
  private Long id;

  @Column(name = "product_name", length = 50)
  private String productName;

  @Column(name = "product_description", length = 2000)
  private String productDescription;

  @Column(name = "category_id", precision = 2)
  private Long categoryId;

  @Column(name = "weight_class", precision = 1)
  private Integer weightClass;

  @Column(name = "supplier_id", precision = 6)
  private Integer supplierId;

  @Column(name = "product_status", length = 20)
  private String productStatus;

  @Column(name = "list_price", precision = 8, scale = 2)
  private BigDecimal listPrice;

  @Column(name = "min_price", precision = 8, scale = 2)
  private BigDecimal minPrice;
  @Column(name = "catalog_url", length = 50)
  private String catalogUrl;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }

  public String getProductDescription() {
    return productDescription;
  }

  public void setProductDescription(String productDescription) {
    this.productDescription = productDescription;
  }

  public Long getCategoryId() {
    return categoryId;
  }

  public void setCategoryId(Long categoryId) {
    this.categoryId = categoryId;
  }

  public Integer getWeightClass() {
    return weightClass;
  }

  public void setWeightClass(Integer weightClass) {
    this.weightClass = weightClass;
  }

  public Integer getSupplierId() {
    return supplierId;
  }

  public void setSupplierId(Integer supplierId) {
    this.supplierId = supplierId;
  }

  public String getProductStatus() {
    return productStatus;
  }

  public void setProductStatus(String productStatus) {
    this.productStatus = productStatus;
  }

  public BigDecimal getListPrice() {
    return listPrice;
  }

  public void setListPrice(BigDecimal listPrice) {
    this.listPrice = listPrice;
  }

  public BigDecimal getMinPrice() {
    return minPrice;
  }

  public void setMinPrice(BigDecimal minPrice) {
    this.minPrice = minPrice;
  }

  public String getCatalogUrl() {
    return catalogUrl;
  }

  public void setCatalogUrl(String catalogUrl) {
    this.catalogUrl = catalogUrl;
  }

/*
  TODO [JPA Buddy] create field to map the 'warranty_period' column
   Available actions: Define target Java type | Uncomment as is | Remove column mapping
  @Column(name = "warranty_period", columnDefinition = "interval(49, 65535)")
  private Object warrantyPeriod;
*/
}