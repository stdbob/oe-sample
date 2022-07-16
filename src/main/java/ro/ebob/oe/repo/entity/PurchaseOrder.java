package ro.ebob.oe.repo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.OffsetDateTime;

@Entity(name = "PurchaseOrderEntity")
@Table(name = "purchase_order")
public class PurchaseOrder {
  @Id
  @Column(name = "id", nullable = false, length = 32)
  private String id;

  @Column(name = "date_loaded")
  private OffsetDateTime dateLoaded;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public OffsetDateTime getDateLoaded() {
    return dateLoaded;
  }

  public void setDateLoaded(OffsetDateTime dateLoaded) {
    this.dateLoaded = dateLoaded;
  }

/*
  TODO [JPA Buddy] create field to map the 'po_document' column
   Available actions: Define target Java type | Uncomment as is | Remove column mapping
  @Column(name = "po_document", columnDefinition = "jsonb")
  private Object poDocument;
*/
}