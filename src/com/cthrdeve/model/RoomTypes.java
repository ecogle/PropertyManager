package com.cthrdeve.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class RoomTypes {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="ROOM_TYPE_ID")
	private int roomTypeId;
	
	@Column(name="ROOM_TYPE")
	private RoomType roomType;
	
	private enum RoomType{
		Bedroom,Bathroom,LivingRoom,Kitchen,MasterBedroom,MasterBath,Closet
	}
}
