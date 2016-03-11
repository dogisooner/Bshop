package com.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Usertype entity. @author MyEclipse Persistence Tools
 */

public class Usertype implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Integer grade;
	private Set users = new HashSet(0);
	private Set users_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Usertype() {
	}

	/** minimal constructor */
	public Usertype(String name, Integer grade) {
		this.name = name;
		this.grade = grade;
	}

	/** full constructor */
	public Usertype(String name, Integer grade, Set users, Set users_1) {
		this.name = name;
		this.grade = grade;
		this.users = users;
		this.users_1 = users_1;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getGrade() {
		return this.grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getUsers_1() {
		return this.users_1;
	}

	public void setUsers_1(Set users_1) {
		this.users_1 = users_1;
	}

}