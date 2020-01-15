package org.lanqiao.servlet.cart;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lanqiao.entity3.Product;

/**
 * չʾ���ﳵ�����㹺�ﳵ��Ʒ�ܼ�
 * @author FREEER
 *
 */
@WebServlet("/ShowCartServlet")
public class ShowCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		Map<Product, Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");//���ﳵ����
		
		
		Set<Product> set = cart.keySet();
		
		double totalPrice = 0.0;
		for(Product product : set) {
			totalPrice += product.getPRICE() * cart.get(product);
		}
		
		request.getSession().setAttribute("totalPrice", totalPrice);
		
		response.sendRedirect(request.getContextPath() + "/cart.jsp");
		
	
	}

}
