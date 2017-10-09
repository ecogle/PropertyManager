package com.cthrdeve.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class Paints {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="PAINT_ID")
	private int paintId;
	
	@OneToOne
	@JoinColumn(name="PAINT_BRAND_ID")
	private PaintBrand paintBrand;
	
	@OneToOne
	@JoinColumn(name="PAINT_COLOR_ID")
	private PaintColor paintColor;
	
	@OneToOne
	@JoinColumn(name="PAINT_FINISH_ID")
	private PaintFinish paintFinish;
	
	@Column(name="PAINT_IS_INDOOR")
	private boolean paintIsIndoor;

	public int getPaintId() {
		return paintId;
	}

	public void setPaintId(int paintId) {
		this.paintId = paintId;
	}

	public PaintBrand getPaintBrand() {
		return paintBrand;
	}

	public void setPaintBrand(PaintBrand paintBrand) {
		this.paintBrand = paintBrand;
	}

	public PaintColor getPaintColor() {
		return paintColor;
	}

	public void setPaintColor(PaintColor paintColor) {
		this.paintColor = paintColor;
	}

	public PaintFinish getPaintFinish() {
		return paintFinish;
	}

	public void setPaintFinish(PaintFinish paintFinish) {
		this.paintFinish = paintFinish;
	}

	public boolean isPaintIsIndoor() {
		return paintIsIndoor;
	}

	public void setPaintIsIndoor(boolean paintIsIndoor) {
		this.paintIsIndoor = paintIsIndoor;
	}
	
	
}
