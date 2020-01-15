package org.lanqiao.servlet3;

import java.io.IOException;


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.dao3.ProductDaoImpl;
import org.lanqiao.entity3.Product;
import org.lanqiao.service3.ProductServiceImpl;


@WebServlet("/PageServlet2")
public class PageServlet2 extends HttpServlet {
	public static int pubpage = 0;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");
	String index = request.getParameter("page");//椤电爜
	System.out.println(index);
	int page = 0;
	if(index == null) {
		page = 1;
	}else {
		page = Integer.parseInt(index);
	}
	pubpage = page;
	//鍟嗗搧鍒嗛〉
	ProductServiceImpl ps = new ProductServiceImpl();		
	List<Product> list = ps.queryByPage(page);		
	//璁＄畻椤电爜
	ProductDaoImpl pd = new ProductDaoImpl();
	int totalCount = pd.selectCount();//鍟嗗搧鎬绘暟		
	int pageCount = 0;
	/*int i = 6;
	while(true)
	{
		if(totalCount%i == 0)
			break;
		else
			i ++;
	}*/
	pageCount = totalCount/12;
	//System.out.println(pageCount);
	//鑾峰彇浣滅敤鍩�
	HttpSession session = request.getSession();
	session.setAttribute("pageList", list);
	session.setAttribute("pageCount", pageCount);
	request.getRequestDispatcher("/page3.jsp").forward(request, response);
}

}
