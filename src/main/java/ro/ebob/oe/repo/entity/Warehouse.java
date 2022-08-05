package ro.ebob.oe.repo.entity;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity(name = "WarehouseEntity")
@Table(name = "warehouses")
public class Warehouse {
  @Id
  @Column(name = "warehouse_id", nullable = false, precision = 3)
  private Long id;

  @Lob
  @Column(name = "warehouse_spec")
  private String warehouseSpec;

  @Column(name = "warehouse_name", length = 35)
  private String warehouseName;

  @Column(name = "location_id", precision = 4)
  private Integer locationId;

  @Column(name = "wh_geo_location", precision = 14, scale = 4)
  private BigDecimal whGeoLocation;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
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

  public Integer getLocationId() {
    return locationId;
  }

  public void setLocationId(Integer locationId) {
    this.locationId = locationId;
  }

  public BigDecimal getWhGeoLocation() {
    return whGeoLocation;
  }

  public void setWhGeoLocation(BigDecimal whGeoLocation) {
    this.whGeoLocation = whGeoLocation;
  }

}