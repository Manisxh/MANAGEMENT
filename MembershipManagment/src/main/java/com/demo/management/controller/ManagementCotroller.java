package com.demo.management.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.management.dao.Management_IMPL;
import com.demo.management.pojo.Management;

@Controller
public class ManagementCotroller {

	@Autowired
	Management_IMPL obj;
	
	@RequestMapping("/showadduser")
	public ModelAndView ShowAddUserForm() {
		return new ModelAndView ("AddUser","command",new Management());
	}
	
	@RequestMapping(value = "/adduser" ,method = RequestMethod.POST)
	public String saveUser(@ModelAttribute Management Manage) {
		obj.AddUser(Manage);
		return "Success";
	}
	
	@RequestMapping(value="/updateuser", method=RequestMethod.POST)
	public String updateUser(@ModelAttribute Management manage) {
		obj.UpdateUserById(manage);
		return "Success";
	}
	
	@RequestMapping("/memberlist")
	public ModelAndView showMember() {
		List<Management> mlist=obj.getAllMember();
		return new ModelAndView("Memberlist","userlist",mlist);
	}
	
	@RequestMapping("/memberuser")
	public ModelAndView showuser(int id) {
		Management ulist=obj.SearchUserById(id);
		return new ModelAndView("MemberUser","userl",ulist);
	}
	
	@RequestMapping("/edit")
	public ModelAndView search(int id) {
		Management ma=(Management) obj.SearchUserById(id);
		return new ModelAndView("UpdateUser","userlist",ma);
	}
	
	@RequestMapping("/delete")
		public String deletefood(int id) {
			obj.DeleteUserById(id);
			return "Success";
		}
	
}
