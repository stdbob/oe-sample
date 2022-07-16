package ro.ebob.oe.repo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity(name = "CategoriesTabEntity")
@Table(name = "categories_tab")
public class CategoriesTab {
  @Id
  @Column(name = "category_id", nullable = false, precision = 2)
  private BigDecimal id;

  @Column(name = "category_name", length = 50)
  private String categoryName;

  @Column(name = "category_description", length = 1000)
  private String categoryDescription;

  @Column(name = "parent_category_id", precision = 2)
  private BigDecimal parentCategoryId;

  public BigDecimal getId() {
    return id;
  }

  public void setId(BigDecimal id) {
    this.id = id;
  }

  public String getCategoryName() {
    return categoryName;
  }

  public void setCategoryName(String categoryName) {
    this.categoryName = categoryName;
  }

  public String getCategoryDescription() {
    return categoryDescription;
  }

  public void setCategoryDescription(String categoryDescription) {
    this.categoryDescription = categoryDescription;
  }

  public BigDecimal getParentCategoryId() {
    return parentCategoryId;
  }

  public void setParentCategoryId(BigDecimal parentCategoryId) {
    this.parentCategoryId = parentCategoryId;
  }

}