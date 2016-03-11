package com.model;

/**
 * Shoporder entity. @author MyEclipse Persistence Tools
 */

public class Shoporder implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Book book;
	private String saler;
	private Double price;

	// Constructors

	/** default constructor */
	public Shoporder() {
	}

	/** minimal constructor */
	public Shoporder(User user, Book book, Double price) {
		this.user = user;
		this.book = book;
		this.price = price;
	}

	/** full constructor */
	public Shoporder(User user, Book book, String saler, Double price) {
		this.user = user;
		this.book = book;
		this.saler = saler;
		this.price = price;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String getSaler() {
		return this.saler;
	}

	public void setSaler(String saler) {
		this.saler = saler;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

}