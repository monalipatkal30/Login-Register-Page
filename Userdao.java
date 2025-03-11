package com.company.dao;

public interface Userdao {

	boolean isValidUser(String username, String password);

	boolean addUser(User user);

	

}
