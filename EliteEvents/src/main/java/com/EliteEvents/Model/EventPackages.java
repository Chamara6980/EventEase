package com.EliteEvents.Model;

public class EventPackages {
	
	private int Package_Id;
	private String Package_Name;
	private String Type;
	private String Venue;
	private String Items;
	private String Price;
	
	
	
	
	public EventPackages() {
		super();
	}

	public EventPackages(int package_Id, String package_Name, String type, String venue, String items,String price) {
		super();
		this.Package_Id = package_Id;
		this.Package_Name = package_Name;
		this.Type = type;
		this.Venue = venue;
		this.Items = items;
		this.Price = price;
	}

	public int getPackage_Id() {
		return Package_Id;
	}

	public void setPackage_Id(int package_Id) {
		Package_Id = package_Id;
	}

	public String getPackage_Name() {
		return Package_Name;
	}

	public void setPackage_Name(String package_Name) {
		Package_Name = package_Name;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getVenue() {
		return Venue;
	}

	public void setVenue(String venue) {
		Venue = venue;
	}

	public String getItems() {
		return Items;
	}

	public void setItems(String items) {
		Items = items;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}
	
	
	
	
	

}
