package com.demo.management.dao;

import java.util.List;

import com.demo.management.pojo.Management;

public interface ManagementDAO {
	
	boolean AddUser(Management Manage);
	boolean DeleteUserById(int Id);
	boolean UpdateUserById(Management Manage);
	Management SearchUserById(int Id);
	List<Management> getAllMember();

}
