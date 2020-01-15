package org.lanqiao.service3;

import java.util.List;

import org.lanqiao.entity3.Product;

public interface ProductService {

	List<Product> queryByPage(int page);//页码
}
