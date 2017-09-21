package service;

import java.sql.SQLException;
import java.util.List;

import dao.DaoDemo;
import domain.Product;

public class ServiceDemo {

	public List<Product> findAll() throws SQLException {
		DaoDemo dd = new DaoDemo();
		return dd.findAll();
	}

}
