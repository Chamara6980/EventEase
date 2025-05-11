package com.EliteEvents.Model;

public class logBookModel {
	private String eventId;
	private String venue;
	private String date;
	private String cusName;
	private String userRating;
	
	public logBookModel() {
		super();
	}
	
	
	public logBookModel(String eventId, String venue, String date, String cusName, String userRating) {
		super();
		this.eventId = eventId;
		this.venue = venue;
		this.date = date;
		this.cusName = cusName;
		this.userRating = userRating;
	}
	
	
	public String getEventId() {
		return eventId;
	}
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	
	public String getUserRating() {
		return userRating;
	}
	public void setUserRating(String userRating) {
		this.userRating = userRating;
	}
	
	

}
