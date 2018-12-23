package com.dao;

import java.util.List;
import java.util.Map;

import com.bean.User;

public interface IUserService {
	int selectNum();
	List<User> selectuserpages(Map<String,Integer> map);
	User selectUserByName(String name);
	void updateActive(String name);
	String selectEmail(String name);
	
    int deleteByname(String name);
    
    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}