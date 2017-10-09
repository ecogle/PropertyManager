package com.cthrdeve.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapKey;

@Entity(name="PROPERTIES")
public class Property {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PROPERTY_ID")
	private int id;
	
	@Column(name="PROPERTY_ADDRESS1")
	private String address1;
	
	@Column(name="PROPERTY_ADDRESS2")
	private String address2;
	
	@Column(name="PROPERTY_CITY")
	private String city;
	
	@Column(name="PROPERTY_STATE")
	private String state;
	
	@Column(name="PROPERTY_ZIP")
	private String zip;
	
	@Column(name="PROPERTY_DESC")
	private String desc;
	
	
	@ManyToOne (cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=Owners.class)
	@JoinColumn(name="owner_id")
	private Owners owner;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Owners  getOwners() {
		return owner;
	}

	public void setOwners(Owners owner) {
		this.owner = owner;
	}
	
	
}
