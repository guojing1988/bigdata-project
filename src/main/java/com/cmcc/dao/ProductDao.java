package com.cmcc.dao;

import com.cmcc.pojo.Product;

import java.util.List;

public interface ProductDao {
    List<Product> selectAll();
    int updateByPrimaryKeySelective(Product product);
    int insertSelective(Product product);
    Product selectOneById(Integer id);
}