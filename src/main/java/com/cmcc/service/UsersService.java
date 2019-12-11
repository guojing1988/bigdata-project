package com.cmcc.service;

import com.cmcc.common.ResponseCode;
import com.cmcc.pojo.CountUsers;
import com.cmcc.pojo.Users;

import java.util.List;


public interface UsersService {
    ResponseCode login(String username, String password);
    ResponseCode getUsers();
    ResponseCode getUserList(String pageNum);
    ResponseCode getUserList(Integer id);
    int updateUserByusername(Users users);
    ResponseCode Search(String param,String pageNum);
    int addUser(Users users);
    List<CountUsers> countUsers();
    int updatePassworById(Integer id,String password);
}
