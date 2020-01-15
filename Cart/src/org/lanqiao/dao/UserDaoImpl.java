package org.lanqiao.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.lanqiao.entity.User;
import org.lanqiao.util.JDBCUtil;

public class UserDaoImpl implements UserDao {

	@Override
	public User selectByNameAndPwd(String email) {
		// TODO Auto-generated method stub
		
		Connection conn = JDBCUtil.getConnection();
		
		User user = null;
		try {
			PreparedStatement ps = conn.prepareStatement("select * from t_user where email = ? ");
		
			ps.setString(1, email);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5));
				
			}
			
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
