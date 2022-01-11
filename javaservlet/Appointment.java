package com.user;

public class Appointment {

	private String appID;
	private String patientID;
	private String name;
	private String status;
	private String payment;
	
	public Appointment(String appID, String patientID, String name, String status, String payment) {
		
		this.appID = appID;
		this.patientID = patientID;
		this.name = name;
		this.status = status;
		this.payment = payment;
	}


	public String getAppID() {
		return appID;
	}

	public String getPatientID() {
		return patientID;
	}

	public String getName() {
		return name;
	}

	public String getStatus() {
		return status;
	}

	public String getPayment() {
		return payment;
	}

	
	
}
