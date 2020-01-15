package org.lanqiao.service3;

import java.util.List;

import org.lanqiao.dao3.ProductDaoImpl;
import org.lanqiao.entity3.Product;

public class ProductServiceImpl implements ProductService {

	
	//15鏉�  4鏉�  4{4,4,4,3} 
	@Override
	public List<Product> queryByPage(int page) {
		
		ProductDaoImpl pd = new ProductDaoImpl();
		
		
		int start = (page-1)*6+1;
		
		int end = page*6;  
		
		return pd.selectByPage(start, end);
	}
	
	public static void main(String[] args) {
		ProductServiceImpl ps = new ProductServiceImpl();
		System.out.println(ps.queryByPage(4));
	}

}
