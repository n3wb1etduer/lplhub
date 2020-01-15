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
 *���빺�ﳵ
 */
@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		String strID = request.getParameter("RANK");
		
		
		int RANK = Integer.parseInt(strID);//id
		
		//��ȡ��ǰ��Ʒ����
		
		ProductDaoImpl pd = new ProductDaoImpl();
		Product product = pd.selectById(RANK);
		
		
		//��Ʒ(��ϸ��Ϣ)--������ӳ���ϵ Map���Ͻ��д���
		Map<Product, Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
			//	new HashMap<Product, Integer>();
		
		
		//������ﳵ�����Ѿ����ڣ��������ﳵ.�鿴�Ƿ���ڵ�ǰ��Ʒ��ӳ��---------�����ڣ�������ӳ���ϵ,����ӳ���ϵ��value+1
		if(cart != null) {
			Set<Product> set = cart.keySet();
			boolean flag=true;
			for(Product product2 : set) {
				if(product2.getRANK().equals(product.getRANK())) {
					cart.put(product2, cart.get(product2) + 1);
					flag=false;//���ڵ�ǰ��Ʒ
					break;//û�б�Ҫ����������
				}
			}
			if(flag){
				cart.put(product, 1);//���ڹ��ﳵ�������ڸ���Ʒ
			}
			
		}else {
			cart = new HashMap<Product, Integer>();
			cart.put(product, 1);
			
		}
		//cart.put(product, 1);
		//�浽session��,cookie�Ƚ����ڴ���
		HttpSession session = request.getSession();
		session.setAttribute("cart", cart);
		
		
		response.sendRedirect(request.getContextPath() + "/ShowCartServlet");
	}

}
