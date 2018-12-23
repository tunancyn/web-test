package com.bean;

public class questiontype {
    private Integer questionId;

    private String tablename;
    
    public questiontype() {
		super();
	}

	public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename == null ? null : tablename.trim();
    }
}