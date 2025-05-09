package com.EliteEvents.Model;

public class Event_manager {
	
	private int event_id;
	private String Pck_id;
	private String Pck_name;
	private String type;
	private String items;
	private String price;
	
	
	
	public Event_manager(int event_id, String pck_id, String pck_name, String type, String items, String price) {
		super();
		this.event_id = event_id;
		Pck_id = pck_id;
		Pck_name = pck_name;
		this.type = type;
		this.items = items;
		this.price = price;
	}



	public int getEvent_id() {
		return event_id;
	}



	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}



	public String getPck_id() {
		return Pck_id;
	}



	public void setPck_id(String pck_id) {
		Pck_id = pck_id;
	}



	public String getPck_name() {
		return Pck_name;
	}



	public void setPck_name(String pck_name) {
		Pck_name = pck_name;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getItems() {
		return items;
	}



	public void setItems(String items) {
		this.items = items;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}
	 
	
	
}
