package com.smartphone.entity;

import javax.persistence.Column; 

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mobiles")

public class SmartPhone {
	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "Mobile_name")
	private String mobile_name;
	@Column(name = "RAM")
	private String RAM;
	@Column(name = "Storage")
	private String storage;
	@Column(name = "Battery")
	private String Battery;
	@Column(name = "Scrensize")
	private String scrensize;
	@Column(name = "primary_Camera")
	private String primary_Camera;
	@Column(name = "secondary_Camera")
	private String secondary_Camera;
	@Column(name = "Displaypannel")
	private String displaypannel;
	@Column(name = "Price")
	private Long price;
	@Column(name = "Available_colour")
	private String available_colour;
	@Column(name = "image_url")
	private String image_url;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMobile_name() {
		return mobile_name;
	}
	public void setMobile_name(String mobile_name) {
		this.mobile_name = mobile_name;
	}
	public String getRAM() {
		return RAM;
	}
	public void setRAM(String rAM) {
		RAM = rAM;
	}
	public String getStorage() {
		return storage;
	}
	public void setStorage(String storage) {
		this.storage = storage;
	}
	public String getBattery() {
		return Battery;
	}
	public void setBattery(String battery) {
		Battery = battery;
	}
	public String getScrensize() {
		return scrensize;
	}
	public void setScrensize(String scrensize) {
		this.scrensize = scrensize;
	}
	public String getPrimary_Camera() {
		return primary_Camera;
	}
	public void setPrimary_Camera(String primary_Camera) {
		this.primary_Camera = primary_Camera;
	}
	public String getSecondary_Camera() {
		return secondary_Camera;
	}
	public void setSecondary_Camera(String secondary_Camera) {
		this.secondary_Camera = secondary_Camera;
	}
	public String getDisplaypannel() {
		return displaypannel;
	}
	public void setDisplaypannel(String displaypannel) {
		this.displaypannel = displaypannel;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getAvailable_colour() {
		return available_colour;
	}
	public void setAvailable_colour(String available_colour) {
		this.available_colour = available_colour;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	@Override
	public String toString() {
		return "SmartPhone [id=" + id + ", mobile_name=" + mobile_name + ", RAM=" + RAM + ", storage=" + storage
				+ ", Battery=" + Battery + ", scrensize=" + scrensize + ", primary_Camera=" + primary_Camera
				+ ", secondary_Camera=" + secondary_Camera + ", displaypannel=" + displaypannel + ", price=" + price
				+ ", available_colour=" + available_colour + ", image_url=" + image_url + "]";
	}

	
	
}
