package org.lanqiao.dao3;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.lanqiao.entity3.Product;
import org.lanqiao.util.JDBCUtil;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.dao3.ProductDaoImpl;
import org.lanqiao.entity3.Product;
import org.lanqiao.service3.ProductServiceImpl;
import org.lanqiao.servlet3.PageServlet;
public class ProductDaoImpl implements ProductDao {

	@Override
	public List<Product> selectByPage(int start, int end) {
		Connection conn = JDBCUtil.getConnection();
		List<Product> list = new ArrayList<Product>();
		Product p = null;
		//ServletRequest request = null;
		//String index = request.getParameter("page");//页码
		int pag = PageServlet.pubpage;
		System.out.println(pag + 100);
		try {
			PreparedStatement ps = null;
			if(pag == 1) {
					 ps = conn.prepareStatement("select RANK, TITLE, MAJOR, YEAR, IMDB_RATING, COVER, IMDB_PAGE, PRICE,STATUS, REMAIN, DESCRIPTION from movie where rownum <=12 ");
					
						ResultSet rs = ps.executeQuery();		
						while(rs.next()) {
							p = new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11));
							list.add(p);
						}
						return list;
			}else {
					 ps = conn.prepareStatement("select RANK, TITLE, MAJOR, YEAR, IMDB_RATING, COVER, IMDB_PAGE,PRICE,STATUS, REMAIN, DESCRIPTION from movie where rownum < " + 12 * pag + " minus select RANK, TITLE, MAJOR, YEAR, IMDB_RATING, COVER, IMDB_PAGE,PRICE,STATUS, REMAIN, DESCRIPTION from movie where rownum < "+ 12 * (pag - 1));
			
	
						ResultSet rs = ps.executeQuery();		
						while(rs.next()) {
							p = new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11));
							list.add(p);
						}
						return list;
			}

			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public int selectCount() {
		Connection conn = JDBCUtil.getConnection();

		String sql = "select count(*) from movie";
		int count = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				count = rs.getInt("count(*)");
			}
			System.out.println(count);
			return count;
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return 0;
	}
	public static void main(String[] args) {
		
		System.out.println(new ProductDaoImpl().selectCount());
	}
}
