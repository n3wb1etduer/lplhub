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
 * 清除一条购物车数据
 * @author FREEER
 *
 */
@WebServlet("/DeleteCartServlet")
public class DeleteCartServlet extends HttpServlet {

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String strID = request.getParameter("RANK");
		int RANK = Integer.parseInt(strID);
		
		Map<Product, Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
		
		Set<Product> set = cart.keySet();
		for(Product product : set) {
			if(product.getRANK() == RANK) {
				cart.remove(product);
				break;
			}
		}
		
		response.sendRedirect(request.getContextPath() + "/ShowCartServlet");
	}

}
