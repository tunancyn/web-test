package com.bean;

public class AllPaperSubject extends AllPaperSubjectKey {
    private Integer subjectType;

    private Integer subjectId;

    public AllPaperSubject() {
		super();
	}

	public Integer getSubjectType() {
        return subjectType;
    }

    public void setSubjectType(Integer subjectType) {
        this.subjectType = subjectType;
    }

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }
}