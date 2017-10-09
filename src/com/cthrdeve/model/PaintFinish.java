package com.cthrdeve.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PaintFinish {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="PAINT_FINISH_ID")
	private int paintFinishId;
	
	@Column(name="PAINT_FINISH")
	private String paintFinish;

	public int getPaintFinishId() {
		return paintFinishId;
	}

	public void setPaintFinishId(int paintFinishId) {
		this.paintFinishId = paintFinishId;
	}

	public String getPaintFinish() {
		return paintFinish;
	}

	public void setPaintFinish(String paintFinish) {
		this.paintFinish = paintFinish;
	}
	
	
}
