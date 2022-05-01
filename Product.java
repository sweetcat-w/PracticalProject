package com.group.pojo;

public class Product {
	private String name;
	private float price;
	private String spec;
	private String origin;
	private String sub_title;
	
	public Product() {}
	
	public Product(String name) {
		this.name = name;
	}
	
	public Product(String name, float price) {
		this(name);
		this.price = price;
	}
	
	public Product(String name, float price,String spec) {
		this(name, price);
		this.spec = spec;
	}
	
	public Product(String name, float price,String spec, String origin) {
		this(name, price, spec);
		this.origin = origin;
	}
	
	public Product(String name, float price,String spec, String origin, String sub_title) {
		this(name, price, sub_title);
		this.sub_title = sub_title;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	
	
}
