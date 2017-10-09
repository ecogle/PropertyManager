package com.cthrdeve.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class PaintColor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="PAINT_COLOR_ID")
	private int paintColorId;
	
	@Column(name="PAINT_COLOR")
	private String paintColor;

	public int getPaintColorId() {
		return paintColorId;
	}

	public void setPaintColorId(int paintColorId) {
		this.paintColorId = paintColorId;
	}

	public String getPaintColor() {
		return paintColor;
	}

	public void setPaintColor(String paintColor) {
		this.paintColor = paintColor;
	}
	
	

}
