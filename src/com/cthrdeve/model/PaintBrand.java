package com.cthrdeve.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PaintBrand {
	
	@Id
	@Column(name="PAINT_BRAND_ID")
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int paintBrandId;
	
	@Column(name="PAINT_BRAND_NAME")
	private int paintBrandName;

	public int getPaintBrandId() {
		return paintBrandId;
	}

	public void setPaintBrandId(int paintBrandId) {
		this.paintBrandId = paintBrandId;
	}

	public int getPaintBrandName() {
		return paintBrandName;
	}

	public void setPaintBrandName(int paintBrandName) {
		this.paintBrandName = paintBrandName;
	}
	
	

}
