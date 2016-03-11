package com.model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private Usertype usertype;
	private String username;
	private Integer stunum;
	private String password;
	private String nickname;
	private String phonenum;
	private String school;
	private String academy;
	private String major;
	private String wealth;
	private String email;
	private String address;
	private String picture;
	private Set shoporders = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, Integer stunum, String password) {
		this.username = username;
		this.stunum = stunum;
		this.password = password;
	}

	/** full constructor */
	public User(Usertype usertype, String username, Integer stunum,
			String password, String nickname, String phonenum, String school,
			String academy, String major, String wealth, String email,
			String address, String picture, Set shoporders) {
		this.usertype = usertype;
		this.username = username;
		this.stunum = stunum;
		this.password = password;
		this.nickname = nickname;
		this.phonenum = phonenum;
		this.school = school;
		this.academy = academy;
		this.major = major;
		this.wealth = wealth;
		this.email = email;
		this.address = address;
		this.picture = picture;
		this.shoporders = shoporders;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Usertype getUsertype() {
		return this.usertype;
	}

	public void setUsertype(Usertype usertype) {
		this.usertype = usertype;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getStunum() {
		return this.stunum;
	}

	public void setStunum(Integer stunum) {
		this.stunum = stunum;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhonenum() {
		return this.phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAcademy() {
		return this.academy;
	}

	public void setAcademy(String academy) {
		this.academy = academy;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getWealth() {
		return this.wealth;
	}

	public void setWealth(String wealth) {
		this.wealth = wealth;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Set getShoporders() {
		return this.shoporders;
	}

	public void setShoporders(Set shoporders) {
		this.shoporders = shoporders;
	}

}