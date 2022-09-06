package ro.ebob.oe.repo;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.jdbc.core.JdbcTemplate;
import ro.ebob.oe.repo.entity.Customer;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace= AutoConfigureTestDatabase.Replace.NONE)
//@ActiveProfiles("postgresql")
class OrderRepositoryTest {

  @Autowired
  private OrderRepository orderRepository;

  @Autowired
  private CustomerRepository customerRepository;

  @Autowired
  private JdbcTemplate jdbcTemplate;

  @Test
  @DisplayName("Jpa maps custom array type")
  void phone_number_array_user_type_is_mapped(){
    Customer customer1 = customerRepository.findById(102L).get();
    customer1.setPhoneNumbers(new Object[] {"1", "2"});
    customerRepository.findAll().stream().forEach(customer -> {
      assertThat(customer.getPhoneNumbers()).isNotEmpty();
    });
  }


}