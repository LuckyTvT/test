package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import domain.Product;
import utils.JDBCUtils;

public class DaoDemo {

	public List<Product> findAll() throws SQLException 
	{
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from product";
		List<Product> list = qr.query(sql, new BeanListHandler<Product>(Product.class));
		return list;
	}

}
