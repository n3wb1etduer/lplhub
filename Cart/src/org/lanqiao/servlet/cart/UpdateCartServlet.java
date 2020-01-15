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


@WebServlet("/UpdateCartServlet")
public class UpdateCartServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String strID = request.getParameter("RANK");
		String str = request.getParameter("status");//0做减法 1做加法
		
		int status = Integer.parseInt(str);
		int RANK = Integer.parseInt(strID);
		
		//快速导包  Ctrl + shift + o
		Map<Product, Integer> cart =  (Map<Product, Integer>) request.getSession().getAttribute("cart");
		//减法
		if(status == 0) {
			
			Set<Product> set = cart.keySet();
			
			int index = 0;
			
			for(Product product: set) {
				
				if(product.getRANK() == RANK) {
					index = cart.get(product);
					
					
					if(index >= 1) {
						index--;
						if(index == 0) {
							cart.remove(product);
							break;
						}else {
							cart.put(product, index);
							break;
						}
						
					}
				}
			}
			
		}else {
			Set<Product> set = cart.keySet();
			
			for(Product product: set) {
				
				if(product.getRANK() == RANK) {
					cart.put(product, cart.get(product) + 1);
					break;
				}
			}
			
		}
		
		request.getSession().setAttribute("cart", cart);
		
		response.sendRedirect(request.getContextPath() + "/ShowCartServlet");
		
	}

}
