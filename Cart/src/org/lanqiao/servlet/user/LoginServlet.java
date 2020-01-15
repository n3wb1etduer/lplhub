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



//���յ�¼������Ӧ��¼���
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//�������룬������Ӧ
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//���ܲ���
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
//		System.out.println("--------------���ܲ���--------------");
//		System.out.println(email);
//		System.out.println(password);
		
		//����ҵ���߼���
		UserServiceImpl impl = new UserServiceImpl();
		
		User user = impl.query(email);
		
		//�߼��ж�
		if(user != null) {
			String pwd = user.getPassword();
			
			if(pwd.equals(password)) {
				
				//������
				//session�Ự  �������������
				//request ����
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				
				//���� ���ܵ�λ����¼��  ת��(��Ҫ������ǰ����һ������)  �ض���(�µ���ʾ������ҪЯ������)
				//request.getRequestDispatcher("/index.html").forward(request,response);
				response.sendRedirect(request.getContextPath() +"/index.jsp");
			
			}
		}else {
			//System.out.println("");
			JOptionPane.showMessageDialog(null, "�û������ڣ���ת��ע��ҳ��", "alert", JOptionPane.ERROR_MESSAGE); 
			response.sendRedirect(request.getContextPath() +"/register.jsp");
		}
	
	}
	
}