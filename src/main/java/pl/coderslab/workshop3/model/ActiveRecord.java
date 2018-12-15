package pl.coderslab.workshop3.model;

import java.sql.SQLException;

public interface ActiveRecord<T> {

    T save() throws SQLException;

    void delete() throws SQLException;
}
