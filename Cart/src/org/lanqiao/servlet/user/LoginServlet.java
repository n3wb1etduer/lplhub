package org.lanqiao.servlet.user;

import java.io.IOException;

import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.lanqiao.entity.User;
import org.lanqiao.service.UserServiceImpl;



//接收登录请求，响应登录结果
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//处理乱码，请求，响应
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//接受参数
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
//		System.out.println("--------------接受参数--------------");
//		System.out.println(email);
//		System.out.println(password);
		
		//调用业务逻辑层
		UserServiceImpl impl = new UserServiceImpl();
		
		User user = impl.query(email);
		
		//逻辑判断
		if(user != null) {
			String pwd = user.getPassword();
			
			if(pwd.equals(password)) {
				
				//作用域
				//session会话  发生在浏览器上
				//request 请求
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				
				//请求 功能单位（登录）  转发(需要带数据前往下一次请求)  重定向(新的请示，不需要携带数据)
				//request.getRequestDispatcher("/index.html").forward(request,response);
				response.sendRedirect(request.getContextPath() +"/index.jsp");
			
			}
		}else {
			//System.out.println("");
			JOptionPane.showMessageDialog(null, "用户不存在，跳转到注册页面", "alert", JOptionPane.ERROR_MESSAGE); 
			response.sendRedirect(request.getContextPath() +"/register.jsp");
		}
	
	}
	
}