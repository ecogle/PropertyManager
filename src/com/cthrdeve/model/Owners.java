package com.cthrdeve.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;

@Entity
public class Owners {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="OWNER_ID")
	private int id;
	
	@Column(name="OWNER_FIRST_NAME")
	private String ownerFirstName;
	
	@Column(name="OWNER_LAST_NAME")
	private String ownerLastName;
	
	@Column(name="OWNER_MIDDLE_NAME")
	private String ownerMiddleName;
	
	@Column(name="OWNER_ADDRESS1")
	private String ownerAddress1;
	
	@Column(name="OWNER_ADDRESS2")
	private String ownerAddress2;
	
	@Column(name="OWNER_CITY")
	private String ownerCity;
	
	@Column(name="OWNER_STATE")
	private String ownerState;
	
	@Column(name="OWNER_ZIP")
	private String ownerZip;
	
	@Column(name="OWNER_PHONE")
	private String ownerPhone;
	
	@Column(name="OWNER_EMAIL")
	private String ownerEmail;
	
	@OneToMany(cascade=CascadeType.ALL,targetEntity=Property.class,fetch=FetchType.EAGER,mappedBy="owner")
	private List<Property> property;
	
	public List<Property> getProperty() {
		return property;
	}
	public void setProperty(List<Property> property) {
		this.property = property;
	}
	public int getOwnerId() {
		return id;
	}
	public void setOwnerId(int ownerId) {
		this.id = ownerId;
	}
	public String getOwnerFirstName() {
		return ownerFirstName;
	}
	public void setOwnerFirstName(String ownerFirstName) {
		this.ownerFirstName = ownerFirstName;
	}
	public String getOwnerLastName() {
		return ownerLastName;
	}
	public void setOwnerLastName(String ownerLastName) {
		this.ownerLastName = ownerLastName;
	}
	public String getOwnerMiddleName() {
		return ownerMiddleName;
	}
	public void setOwnerMiddleName(String ownerMiddleName) {
		this.ownerMiddleName = ownerMiddleName;
	}
	public String getOwnerAddress1() {
		return ownerAddress1;
	}
	public void setOwnerAddress1(String ownerAddress1) {
		this.ownerAddress1 = ownerAddress1;
	}
	public String getOwnerAddress2() {
		return ownerAddress2;
	}
	public void setOwnerAddress2(String ownerAddress2) {
		this.ownerAddress2 = ownerAddress2;
	}
	public String getOwnerCity() {
		return ownerCity;
	}
	public void setOwnerCity(String ownerCity) {
		this.ownerCity = ownerCity;
	}
	public String getOwnerState() {
		return ownerState;
	}
	public void setOwnerState(String ownerState) {
		this.ownerState = ownerState;
	}
	public String getOwnerZip() {
		return ownerZip;
	}
	public void setOwnerZip(String ownerZip) {
		this.ownerZip = ownerZip;
	}
	public String getOwnerPhone() {
		return ownerPhone;
	}
	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}
	public String getOwnerEmail() {
		return ownerEmail;
	}
	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}
	
	
}
