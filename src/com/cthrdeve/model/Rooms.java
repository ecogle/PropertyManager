package com.cthrdeve.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Rooms {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="ROOM_ID")
	private int id;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=Paints.class)
	@JoinColumn(name="PAINT_ID")
	private int accentPaintFk;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=Paints.class)
	@JoinColumn(name="PAINT_ID")
	private int basePaintFk;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=Property.class)
	@JoinColumn(name="PROPERTY_ID")
	private int propertyFk;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=RoomTypes.class)
	@JoinColumn(name="ROOM_TYPE_ID")
	private int roomTypeFk;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=Paints.class)
	@JoinColumn(name="PAINT_ID")
	private int trimPaintFk;
}
