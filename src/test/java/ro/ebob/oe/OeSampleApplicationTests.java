package ro.ebob.oe;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.JdbcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

//@SpringBootTest
@JdbcTest
class OeSampleApplicationTests {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Test
	void dbLoads() {

		int categories = jdbcTemplate.queryForObject(
				"SELECT COUNT(*) FROM categories_tab", Integer.class);
		assertThat(categories).isEqualTo(22);

		int promotions = jdbcTemplate.queryForObject(
				"SELECT COUNT(*) FROM promotions", Integer.class);
		assertThat(promotions).isEqualTo(2);

		int customers = jdbcTemplate.queryForObject(
				"SELECT COUNT(*) FROM customers", Integer.class);
		assertThat(customers).isEqualTo(30);

		List<Integer> orders = jdbcTemplate.queryForList(
				"SELECT product_id FROM product_information order by product_id", Integer.class);
		assertThat(orders.size()).isGreaterThan(10);

		jdbcTemplate.update(
				"INSERT INTO purchase_order VALUES(?, ?, jsonb(?))",
				new Object[] {"T1", Instant.now().toString(), "{\"PONumber\":7358, \"1\":\"Felicia's Journey\"}"});

		List<String> purchases = jdbcTemplate.queryForList(
				"SELECT po_document FROM purchase_order", String.class);
		ObjectMapper jsonMapper = new ObjectMapper();
		assertThat(purchases.size()).isGreaterThan(10);
		purchases.stream().map(d -> {
			try {
				return jsonMapper.readValue(d, JsonNode.class);
			} catch (JsonProcessingException e) {
				throw new RuntimeException(e);
			}
		}).forEach(json -> System.out.println(json.get("PONumber")));
	}

}
