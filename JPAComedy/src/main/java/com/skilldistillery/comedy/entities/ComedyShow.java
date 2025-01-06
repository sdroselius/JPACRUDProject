package com.skilldistillery.comedy.entities;

import java.time.LocalDate;

import org.hibernate.annotations.Collate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "comedy_show")
public class ComedyShow {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String performer;
	
	@Column(name = "performance_date")
	private LocalDate performanceDate;
	
	@Column(name = "performer_image_url")
	private String performerImageUrl;
	
	private String venue;
	
	private String remarks;
	
	private int rating;
	
	private Boolean heckled;

	public ComedyShow() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPerformer() {
		return performer;
	}

	public void setPerformer(String performer) {
		this.performer = performer;
	}

	public LocalDate getPerformanceDate() {
		return performanceDate;
	}

	public void setPerformanceDate(LocalDate performanceDate) {
		this.performanceDate = performanceDate;
	}

	public String getPerformerImageUrl() {
		return performerImageUrl;
	}

	public void setPerformerImageUrl(String performerImageUrl) {
		this.performerImageUrl = performerImageUrl;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Boolean getHeckled() {
		return heckled;
	}

	public void setHeckled(Boolean heckled) {
		this.heckled = heckled;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ComedyShow [id=").append(id).append(", performer=").append(performer).append("]");
		return builder.toString();
	}

}
