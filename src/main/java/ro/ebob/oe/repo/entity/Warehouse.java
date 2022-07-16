package ro.ebob.oe.repo.entity;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity(name = "WarehouseEntity")
@Table(name = "warehouses")
public class Warehouse {
  @Id
  @Column(name = "warehouse_id", nullable = false, precision = 3)
  private BigDecimal id;

  @Lob
  @Column(name = "warehouse_spec")
  private String warehouseSpec;

  @Column(name = "warehouse_name", length = 35)
  private String warehouseName;

  @Column(name = "location_id", precision = 4)
  private BigDecimal locationId;

  @Column(name = "wh_geo_location", precision = 14, scale = 4)
  private BigDecimal whGeoLocation;

  public BigDecimal getId() {
    return id;
  }

  public void setId(BigDecimal id) {
    this.id = id;
  }

  public String getWarehouseSpec() {
    return warehouseSpec;
  }

  public void setWarehouseSpec(String warehouseSpec) {
    this.warehouseSpec = warehouseSpec;
  }

  public String getWarehouseName() {
    return warehouseName;
  }

  public void setWarehouseName(String warehouseName) {
    this.warehouseName = warehouseName;
  }

  public BigDecimal getLocationId() {
    return locationId;
  }

  public void setLocationId(BigDecimal locationId) {
    this.locationId = locationId;
  }

  public BigDecimal getWhGeoLocation() {
    return whGeoLocation;
  }

  public void setWhGeoLocation(BigDecimal whGeoLocation) {
    this.whGeoLocation = whGeoLocation;
  }

}