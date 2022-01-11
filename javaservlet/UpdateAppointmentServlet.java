package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAppointmentServet")
public class UpdateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String appID = request.getParameter("aid");
		String patientID = request.getParameter("pid");
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		String payment = request.getParameter("payment");
		
		boolean isTrue;
		
		isTrue = DoctorDButil.updateAppointment(appID, patientID, name, status, payment);
		
		if(isTrue ==  true) {
			
			List<Appointment> appDetails = DoctorDButil.getAppointmentDetails(appID);
			request.setAttribute("appDetails", appDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("appointmentsch.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Appointment> appDetails = DoctorDButil.getAppointmentDetails(appID);
			request.setAttribute("appDetails", appDetails);
			 
			RequestDispatcher dis = request.getRequestDispatcher("appointmentsch.jsp");
			dis.forward(request, response);
			
		}
	}

}
