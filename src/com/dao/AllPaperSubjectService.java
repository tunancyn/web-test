package com.dao;

import com.bean.AllPaperSubject;
import com.bean.AllPaperSubjectKey;

public interface AllPaperSubjectService {
    int deleteByPrimaryKey(AllPaperSubjectKey key);

    int insert(AllPaperSubject record);

    int insertSelective(AllPaperSubject record);

    AllPaperSubject selectByPrimaryKey(AllPaperSubjectKey key);

    int updateByPrimaryKeySelective(AllPaperSubject record);

    int updateByPrimaryKey(AllPaperSubject record);
}