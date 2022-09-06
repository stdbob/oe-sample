package ro.ebob.oe.repo.entity;

import org.hibernate.annotations.Type;
import ro.ebob.oe.repo.converter.ArrayObjectHibernateUserType;//trust me, it is used

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity(name = "CustomerEntity")
@Table(name = "customers")
public class Customer {
  @Id
  @Column(name = "customer_id", nullable = false, precision = 6)
  private Long id;

  @Column(name = "cust_first_name", nullable = false, length = 20)
  private String custFirstName;

  @Column(name = "cust_last_name", nullable = false, length = 20)
  private String custLastName;

  @Column(name = "street_address", length = 40)
  private String streetAddress;

  @Column(name = "postal_code", length = 10)
  private String postalCode;

  @Column(name = "city", length = 30)
  private String city;

  @Column(name = "state_province", length = 10)
  private String stateProvince;

  @Column(name = "country_id", length = 2)
  private String countryId;

  @Column(name = "nls_language", length = 3)
  private String nlsLanguage;

  @Column(name = "nls_territory", length = 30)
  private String nlsTerritory;

  @Column(name = "credit_limit", precision = 9, scale = 2)
  private BigDecimal creditLimit;

  @Column(name = "cust_email", length = 128)
  private String custEmail;

  @Column(name = "account_mgr_id")
  private Integer accountMgrId;

  @Column(name = "cust_geo_lat", precision = 12, scale = 8)
  private BigDecimal custGeoLat;

  @Column(name = "cust_geo_long", precision = 12, scale = 8)
  private BigDecimal custGeoLong;

  @Column(name = "date_of_birth")
  private LocalDate dateOfBirth;

  @Column(name = "marital_status", length = 20)
  private String maritalStatus;

  @Column(name = "gender", length = 1)
  private String gender;
  @Column(name = "income_level", length = 20)
  private String incomeLevel;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getCustFirstName() {
    return custFirstName;
  }

  public void setCustFirstName(String custFirstName) {
    this.custFirstName = custFirstName;
  }

  public String getCustLastName() {
    return custLastName;
  }

  public void setCustLastName(String custLastName) {
    this.custLastName = custLastName;
  }

  public String getStreetAddress() {
    return streetAddress;
  }

  public void setStreetAddress(String streetAddress) {
    this.streetAddress = streetAddress;
  }

  public String getPostalCode() {
    return postalCode;
  }

  public void setPostalCode(String postalCode) {
    this.postalCode = postalCode;
  }

  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public String getStateProvince() {
    return stateProvince;
  }

  public void setStateProvince(String stateProvince) {
    this.stateProvince = stateProvince;
  }

  public String getCountryId() {
    return countryId;
  }

  public void setCountryId(String countryId) {
    this.countryId = countryId;
  }

  public String getNlsLanguage() {
    return nlsLanguage;
  }

  public void setNlsLanguage(String nlsLanguage) {
    this.nlsLanguage = nlsLanguage;
  }

  public String getNlsTerritory() {
    return nlsTerritory;
  }

  public void setNlsTerritory(String nlsTerritory) {
    this.nlsTerritory = nlsTerritory;
  }

  public BigDecimal getCreditLimit() {
    return creditLimit;
  }

  public void setCreditLimit(BigDecimal creditLimit) {
    this.creditLimit = creditLimit;
  }

  public String getCustEmail() {
    return custEmail;
  }

  public void setCustEmail(String custEmail) {
    this.custEmail = custEmail;
  }

  public Integer getAccountMgrId() {
    return accountMgrId;
  }

  public void setAccountMgrId(Integer accountMgrId) {
    this.accountMgrId = accountMgrId;
  }

  public BigDecimal getCustGeoLat() {
    return custGeoLat;
  }

  public void setCustGeoLat(BigDecimal custGeoLat) {
    this.custGeoLat = custGeoLat;
  }

  public BigDecimal getCustGeoLong() {
    return custGeoLong;
  }

  public void setCustGeoLong(BigDecimal custGeoLong) {
    this.custGeoLong = custGeoLong;
  }

  public LocalDate getDateOfBirth() {
    return dateOfBirth;
  }

  public void setDateOfBirth(LocalDate dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
  }

  public String getMaritalStatus() {
    return maritalStatus;
  }

  public void setMaritalStatus(String maritalStatus) {
    this.maritalStatus = maritalStatus;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  public String getIncomeLevel() {
    return incomeLevel;
  }

  public void setIncomeLevel(String incomeLevel) {
    this.incomeLevel = incomeLevel;
  }

  @Column(name = "phone_numbers", columnDefinition = "VARCHAR(256) ARRAY")
  @Type(type = "ro.ebob.oe.repo.converter.ArrayObjectHibernateUserType")//no other safe way to declare it
  private Object[] phoneNumbers;

  public Object[] getPhoneNumbers() {
    return phoneNumbers;
  }

  public void setPhoneNumbers(Object[] phoneNumbers) {
    this.phoneNumbers = phoneNumbers;
  }

  //https://vladmihalcea.com/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
  @Override
  public boolean equals(Object o) {
    if (this == o) return true;

    if (!(o instanceof Customer))
      return false;

    Customer other = (Customer) o;

    return id != null && id.equals(other.getId());

  }

  @Override
  public int hashCode() {
    return getClass().hashCode();
  }
}