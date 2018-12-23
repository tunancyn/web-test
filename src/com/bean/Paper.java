package com.bean;

public class Paper {
    private Integer paperId;

    private String name;
    private Boolean publish;
    
    public Paper() {
		super();
	}

	public Paper(String name) {
		super();
		this.paperId = null;
		this.name = name;
		this.publish=false;
	}

	public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

	public Boolean getPublish() {
		return publish;
	}

	public void setPublish(Boolean publish) {
		this.publish = publish;
	}

	@Override
	public String toString() {
		return "Paper [paperId=" + paperId + ", name=" + name + "]";
	}
    
}