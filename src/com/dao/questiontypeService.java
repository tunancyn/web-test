package com.dao;

import com.bean.questiontype;

public interface questiontypeService {
    int deleteByPrimaryKey(Integer questionId);

    int insert(questiontype record);

    int insertSelective(questiontype record);

    questiontype selectByPrimaryKey(Integer questionId);

    int updateByPrimaryKeySelective(questiontype record);

    int updateByPrimaryKey(questiontype record);
}