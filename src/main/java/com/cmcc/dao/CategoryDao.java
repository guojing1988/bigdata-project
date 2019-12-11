package com.cmcc.dao;

import com.cmcc.pojo.Category;

import java.util.List;

public interface CategoryDao {
    List<Category> selectAll();


    int deleteByPrimaryKey(Integer id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
}