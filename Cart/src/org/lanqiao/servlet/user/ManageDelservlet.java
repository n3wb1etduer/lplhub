package org.lanqiao.servlet.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.lanqiao.util3.JDBCUtil;
import org.lanqiao.entity.User;
import org.lanqiao.service.UserServiceImpl;
import java.sql.ResultSet;

@WebServlet("/ManageDelservlet")
public class ManageDelservlet extends HttpServlet {
	
		public  int flag = 0;
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = JDBCUtil.getConnection();		
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			//String uesr = request.getParameter("user");
			String email = request.getParameter("email");
			//String password = request.getParameter("password");
			//String password1 = request.getParameter("password1");
			//		System.out.println("--------------   ?   --------------");
			//System.out.println(password1);
			System.out.println(email);
						
			/*if( !password.equals(password1)) {
				JOptionPane.showMessageDialog(null, "两侧输入密码不同", "alert", JOptionPane.ERROR_MESSAGE); 
				//response.sendRedirect(request.getContextPath() +"/register.jsp");
				request.getRequestDispatcher("/register.jsp").forward(request,response);
			}*/
				
			UserServiceImpl impl = new UserServiceImpl();	 	
			User user =  impl.query(email); 
			if(user != null ) {
				PreparedStatement ps;
				try {
					ps = conn.prepareStatement("Delete from t_user where EMAIL ='"+ email +"'");
					ps.execute();
					JOptionPane.showMessageDialog(null, "success", "alert", JOptionPane.ERROR_MESSAGE);
					response.sendRedirect(request.getContextPath() +"/manager.jsp");
				} 
				catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			}	
		}
		
