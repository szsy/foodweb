package com.foodweb.model;

import java.util.Date;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Customer customer;
	private Food food;
	private Integer foodnum;
	private Double total;
	private Date date;
	private Integer commentStatue;
	private String comment;
	private String content;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Food food, Integer foodnum) {
		this.food = food;
		this.foodnum = foodnum;
	}

	/** full constructor */
	public Order(Customer customer, Food food, Integer foodnum, Double total,
			Date date, Integer commentStatue, String comment, String content) {
		this.customer = customer;
		this.food = food;
		this.foodnum = foodnum;
		this.total = total;
		this.date = date;
		this.commentStatue = commentStatue;
		this.comment = comment;
		this.content = content;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Food getFood() {
		return this.food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public Integer getFoodnum() {
		return this.foodnum;
	}

	public void setFoodnum(Integer foodnum) {
		this.foodnum = foodnum;
	}

	public Double getTotal() {
		return this.total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getCommentStatue() {
		return this.commentStatue;
	}

	public void setCommentStatue(Integer commentStatue) {
		this.commentStatue = commentStatue;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}