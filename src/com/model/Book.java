package com.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer id;
	private String owner;
	private String bookname;
	private String press;
	private Double credit;
	private String isbn;
	private String type;
	private Date uptime;
	private Date prtime;
	private String page;
	private String size;
	private String status;
	private String delivery;
	private String img;
	private String writer;
	private String translator;
	private Set shoporders = new HashSet(0);
	private Set shoporders_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(String owner, String bookname) {
		this.owner = owner;
		this.bookname = bookname;
	}

	/** full constructor */
	public Book(String owner, String bookname, String press, Double credit,
			String isbn, String type, Date uptime, Date prtime, String page,
			String size, String status, String delivery, String img,
			String writer, String translator, Set shoporders, Set shoporders_1) {
		this.owner = owner;
		this.bookname = bookname;
		this.press = press;
		this.credit = credit;
		this.isbn = isbn;
		this.type = type;
		this.uptime = uptime;
		this.prtime = prtime;
		this.page = page;
		this.size = size;
		this.status = status;
		this.delivery = delivery;
		this.img = img;
		this.writer = writer;
		this.translator = translator;
		this.shoporders = shoporders;
		this.shoporders_1 = shoporders_1;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getPress() {
		return this.press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public Double getCredit() {
		return this.credit;
	}

	public void setCredit(Double credit) {
		this.credit = credit;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getUptime() {
		return this.uptime;
	}

	public void setUptime(Date uptime) {
		this.uptime = uptime;
	}

	public Date getPrtime() {
		return this.prtime;
	}

	public void setPrtime(Date prtime) {
		this.prtime = prtime;
	}

	public String getPage() {
		return this.page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getSize() {
		return this.size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDelivery() {
		return this.delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getWriter() {
		return this.writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTranslator() {
		return this.translator;
	}

	public void setTranslator(String translator) {
		this.translator = translator;
	}

	public Set getShoporders() {
		return this.shoporders;
	}

	public void setShoporders(Set shoporders) {
		this.shoporders = shoporders;
	}

	public Set getShoporders_1() {
		return this.shoporders_1;
	}

	public void setShoporders_1(Set shoporders_1) {
		this.shoporders_1 = shoporders_1;
	}

}