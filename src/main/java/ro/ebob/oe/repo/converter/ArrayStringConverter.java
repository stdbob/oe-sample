package ro.ebob.oe.repo.converter;

import javax.persistence.Converter;
import javax.persistence.AttributeConverter;
import java.sql.*;
import java.util.Arrays;

@Converter(autoApply=false)
public class ArrayStringConverter implements AttributeConverter<String[], java.sql.Array> {

  @Override
  public java.sql.Array convertToDatabaseColumn(String[] string) {
    return null;
  }

  @Override
  public String[] convertToEntityAttribute(java.sql.Array array) {
    try {
      return array == null ? null : (String[])array.getArray();
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
  }
}
