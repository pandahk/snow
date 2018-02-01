package com.snowstone.snow.web.util;

import java.io.Serializable;

public class UserVo implements Serializable {
	/**
	* 
	*/
	private static final long serialVersionUID = 148154643104985245L;

	private String account;
	private String name;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
