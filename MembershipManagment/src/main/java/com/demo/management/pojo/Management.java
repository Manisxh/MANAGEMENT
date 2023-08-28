package com.demo.management.pojo;

public class Management {

	private int Id;
	private String Name;
	private int age;
	private String gender;
	private String startdate;
	private String enddate;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	
	public Management() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Management(int id, String name, int age, String gender, String startdate, String enddate) {
		super();
		Id = id;
		Name = name;
		this.age = age;
		this.gender = gender;
		this.startdate = startdate;
		this.enddate = enddate;
	}
	public Management(String name, int age, String gender, String startdate, String enddate) {
		super();
		Name = name;
		this.age = age;
		this.gender = gender;
		this.startdate = startdate;
		this.enddate = enddate;
	}
	@Override
	public String toString() {
		return "Management [Id=" + Id + ", Name=" + Name + ", age=" + age + ", gender=" + gender + ", startdate="
				+ startdate + ", enddate=" + enddate + "]";
	}
	
	
}