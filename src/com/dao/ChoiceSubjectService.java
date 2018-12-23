package com.dao;

import com.bean.ChoiceSubject;

public interface ChoiceSubjectService {
	
    int deleteByPrimaryKey(Integer subjectId);

    int insert(ChoiceSubject record);

    int insertSelective(ChoiceSubject record);

    ChoiceSubject selectByPrimaryKey(Integer subjectId);

    int updateByPrimaryKeySelective(ChoiceSubject record);

    int updateByPrimaryKey(ChoiceSubject record);
}