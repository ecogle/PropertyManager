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
import javax.persistence.OneToOne;

import com.sun.prism.paint.Paint;

@Entity
public class Rooms {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="ROOM_ID")
	private int id;
	
	@OneToOne
	@JoinColumn(name="PAINT_ID")
	private Paint accentPaint;
	
	@OneToOne
	@JoinColumn(name="PAINT_ID")
	private Paint basePaint;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER,targetEntity=Property.class)
	@JoinColumn(name="PROPERTY_ID")
	private int propertyFk;
	
	@OneToOne
	@JoinColumn(name="ROOM_TYPE_ID")
	private RoomTypes roomType;
	
	@OneToOne
	@JoinColumn(name="PAINT_ID")
	private Paint trimPaint;
}
