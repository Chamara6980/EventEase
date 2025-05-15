package com.EliteEvents.Model;

public class Booking {

	private int id;
	private String fullName;
	private String email;
	private String conNumber;
	private String date;
	private String specRequirment;

	public Booking(int id, String fullName, String email, String conNumber, String date, String specRequirment) {
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.conNumber = conNumber;
		this.date = date;
		this.specRequirment = specRequirment;
	}

	public int getId() {
		return id;
	}

	public String getFullName() {
		return fullName;
	}

	public String getEmail() {
		return email;
	}

	public String getConNumber() {
		return conNumber;
	}

	public String getDate() {
		return date;
	}

	public String getSpecRequirment() {
		return specRequirment;
	}
	
}
