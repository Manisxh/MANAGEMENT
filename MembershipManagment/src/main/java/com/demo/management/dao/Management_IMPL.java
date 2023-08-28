package com.demo.management.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.demo.management.pojo.Management;

public class Management_IMPL implements ManagementDAO{

	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public boolean AddUser(Management Manage) {
		String sql="INSERT INTO member (Name, age, gender, startdate, enddate) values (?,?,?,?,?)";
		int row=template.update(sql,Manage.getName(),Manage.getAge(),Manage.getGender(),Manage.getStartdate(),Manage.getEnddate());
		return row>0;
	}

	@Override
	public boolean UpdateUserById(Management Manage) {
		String sql="UPDATE member SET Name =?, age = ?, gender=?, startdate = ?, enddate = ? WHERE id = ?";
		int row=template.update(sql,Manage.getName(),Manage.getAge(),Manage.getGender(),Manage.getStartdate(),Manage.getEnddate(),Manage.getId());
		return row>0;
	}
	
	@Override
	public boolean DeleteUserById(int Id) {
		String sql="delete from member where ID=?";
		int row=template.update(sql,Id);
		return row>0;
	}

	

	@Override
	public Management SearchUserById(int Id) {
		String sql="select * from member where Id=?";
		Management manage=null;
		return manage=template.queryForObject(sql, new Object[] {Id},new RowMapper<Management>() {
			
			@Override
			public Management mapRow(ResultSet rs, int row) throws SQLException {
				Management m=new Management();
				m.setId(rs.getInt("Id"));
				m.setName(rs.getString("Name"));
				m.setAge(rs.getInt("age"));
				m.setGender(rs.getString("gender"));
				m.setStartdate(rs.getString("startdate"));
				m.setEnddate(rs.getString("enddate"));
				return m;
			}
		});
	}

	@Override
	public List<Management> getAllMember() {
		String sql="select * from member";
		List<Management> list=template.query(sql, new RowMapper<Management>() {
			@Override
			public Management mapRow(ResultSet rs, int row) throws SQLException {
				Management m=new Management();
				m.setId(rs.getInt("Id"));
				m.setName(rs.getString("Name"));
				m.setAge(rs.getInt("age"));
				m.setGender(rs.getString("gender"));
				m.setStartdate(rs.getString("startdate"));
				m.setEnddate(rs.getString("enddate"));
				return m;
			}
		});
		return list;
	}

	

}
