package com.briup.cms.bean;

public class FriendLink {
	private static final long serialVersionUID = 1L;
	private String name;
	private String address;
	private Integer id;
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public Integer getId() {
		return id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public FriendLink() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FriendLink(String name, String address, Integer id) {
		super();
		this.name = name;
		this.address = address;
		this.id = id;
	}
	@Override
	public String toString() {
		return "FriendLink [name=" + name + ", address=" + address + ", id="
				+ id + "]";
	}
	

}
