package com.user;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class DoctorDButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Doctor> validate(String userName, String password){
		
		ArrayList<Doctor> doc = new ArrayList<>();
		
		//create database connection
		/*String url ="jdbc:mysql://localhost:3306/echannel" ;
		String user = "root";
		String pass = "admin";*/
				
		//validate
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			/*Class.forName("com.mysql.jdbc.Driver");*/
			
			/*Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();*/
			String sql = "select * from doctor where doctorID='"+userName+"' and password='"+password+"'";
			/*ResultSet rs = stmt.executeQuery(sql);*/
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String specialization = rs.getString(5);
				String passU = rs.getString(6);
				String cpassU = rs.getString(7);
				
				Doctor d = new Doctor(id, name, email, mobile, specialization, passU, cpassU);
				doc.add(d);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return doc;
		
	}
	
	
	public static boolean insertDiagnostics(String pid, String name, String age, String diagnostics, String prescription) {
		
		boolean isSuccess = false;
		
		//create database connection
		/*String url ="jdbc:mysql://localhost:3306/echannel" ;
		String user = "root";
		String pass = "admin";*/
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			/*Class.forName("com.mysql.jdbc.Driver");*/
			
			/*Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();*/ 
			String sql = "insert into diagnostics values ('"+pid+"','"+name+"','"+age+"','"+diagnostics+"','"+prescription+"')";
			int rs = stmt.executeUpdate(sql);
		
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
				
		return isSuccess;
	}
	
	public static boolean updateDoctor(String id, String name, String email, String mobile, String special, String password, String cnfrmPassword) {
		
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update doctor set name='"+name+"', email='"+email+"', mobile='"+mobile+"', specialization='"+special+"', password='"+password+"', confirmedPasword='"+cnfrmPassword+"'" + "where doctorID='"+id+"'";
			int rs = stmt.executeUpdate(sql);		
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess =  false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<Doctor> getDoctorDetails(String id){
		
		ArrayList<Doctor> doc = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where doctorID = '"+id+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String docid = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String special = rs.getString(5);
				String pwd = rs.getString(6);
				String cnfrmpwd = rs.getString(7);
				
				Doctor d = new Doctor(docid, name, email, mobile, special, pwd, cnfrmpwd);
				doc.add(d);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return doc;
	}

	public static boolean deleteDoctor(String id) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from doctor where doctorID='"+id+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0){
				isSuccess = true;
			}
			else {
				isSuccess = true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
		
	}

	public static List<Appointment> validater(String appointmentID){
		
		ArrayList<Appointment> app = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		
			String sql = "select * from apschedule where appID='"+appointmentID+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				String aid = rs.getString(1);
				String pid = rs.getString(2);
				String name = rs.getString(3);
				String status = rs.getString(4);
				String pay = rs.getString(5);
				
				
				Appointment a = new Appointment(aid, pid, name, status, pay);
				app.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return app;
		}
	
	public static boolean updateAppointment(String appID, String patientID, String name, String status, String payment) {
	
		
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update apschedule set status='"+status+"', payment='"+payment+"'" + "where appID='"+appID+"'";
			int rs = stmt.executeUpdate(sql);		
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess =  false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;	
		
	}


	public static List<Appointment> getAppointmentDetails(String appID) {

	ArrayList<Appointment> app = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from apschedule where appID = '"+appID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String aid = rs.getString(1);
				String pid = rs.getString(2);
				String name = rs.getString(3);
				String status = rs.getString(4);
				String payment = rs.getString(5);
				
				Appointment a = new Appointment(aid, pid, name, status, payment);
				app.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return app;
	}
	
	
	public static boolean deleteAppointment(String appID) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from apschedule where appID='"+appID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0){
				isSuccess = true;
			}
			else {
				isSuccess = true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
}
