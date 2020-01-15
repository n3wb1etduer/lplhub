package org.lanqiao.product.dao;

import org.lanqiao.product.dao.ProductDao;
import org.lanqiao.util3.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.lanqiao.entity3.Product;

public class ProductDaoImpl implements ProductDao {

	@Override
	public Product selectById(int RANK) {
		Connection conn = JDBCUtil.getConnection();
		
		Product p  = null;
		try {
			
				PreparedStatement ps = conn.prepareStatement("select * from movie where RANK = ?");
		
				ps.setInt(1, RANK);
				
				ResultSet rs = ps.executeQuery();
		
				while(rs.next()) {
					 p = new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11));
				}
				
				return p;
			}catch(SQLException e){
			e.printStackTrace();
		}
			
		return null;
	}

}


