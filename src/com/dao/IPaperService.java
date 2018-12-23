package com.dao;

import java.util.List;
import java.util.Map;

import com.bean.Paper;

public interface IPaperService {
	int selectNum();
	List<Paper> selectjavapages(Map<String,Integer> map);
	void updatePublish(Map<String,Object> map);//String papername,Boolean publish
	
    int deleteByPrimaryKey(Integer paperId);

    int insert(Paper record);

    int insertSelective(Paper record);

    Paper selectByPrimaryKey(Integer paperId);

    int updateByPrimaryKeySelective(Paper record);

    int updateByPrimaryKey(Paper record);
}