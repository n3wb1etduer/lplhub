package org.lanqiao.servlet.cart;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.entity3.Product;
import org.lanqiao.product.dao.ProductDaoImpl;

/**
 * 
 * @author FREEER
 *加入购物车
 */
@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		String strID = request.getParameter("RANK");
		
		
		int RANK = Integer.parseInt(strID);//id
		
		//获取当前商品对象
		
		ProductDaoImpl pd = new ProductDaoImpl();
		Product product = pd.selectById(RANK);
		
		
		//商品(详细信息)--数量的映射关系 Map集合进行处理
		Map<Product, Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
			//	new HashMap<Product, Integer>();
		
		
		//如果购物车对象已经存在，遍历购物车.查看是否存在当前商品的映射---------不存在，则新增映射关系,存在映射关系，value+1
		if(cart != null) {
			Set<Product> set = cart.keySet();
			boolean flag=true;
			for(Product product2 : set) {
				if(product2.getRANK().equals(product.getRANK())) {
					cart.put(product2, cart.get(product2) + 1);
					flag=false;//存在当前商品
					break;//没有必要继续遍历了
				}
			}
			if(flag){
				cart.put(product, 1);//存在购物车，不存在该商品
			}
			
		}else {
			cart = new HashMap<Product, Integer>();
			cart.put(product, 1);
			
		}
		//cart.put(product, 1);
		//存到session里,cookie比较难于处理
		HttpSession session = request.getSession();
		session.setAttribute("cart", cart);
		
		
		response.sendRedirect(request.getContextPath() + "/ShowCartServlet");
	}

}
