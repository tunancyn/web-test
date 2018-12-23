package com.bean;

public class User {
    private Integer userId;

    private String name;

    private String password;

    private String email;

    private Boolean active;
    
    
    public User() {
		super();
	}
	public User(String name, String password, String email, Boolean active) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.active = active;
	}

	public User( String name, String password, String email) {
		super();
		this.userId = null;
		this.name = name;
		this.password = password;
		this.email = email;
		this.active = false;
	}

	public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

	@Override
	public String toString() {
		return "User [userId=" + userId + ", name=" + name + ", password=" + password + ", email=" + email + ", active="
				+ active + "]";
	}
    
}