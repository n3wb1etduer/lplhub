package org.lanqiao.dao3;

import java.util.List;


import org.lanqiao.entity3.Product;


public interface ProductDao {

	
	List<Product> selectByPage(int start,int end);
	
	
	int selectCount() ;//类别
}
