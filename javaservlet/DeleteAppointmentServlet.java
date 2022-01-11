package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String appID = request.getParameter("aid");
		boolean isTrue;
		
		isTrue = DoctorDButil.deleteAppointment(appID);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewer.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Appointment> appDetails = DoctorDButil.getAppointmentDetails(appID);
			request.setAttribute("appDetails", appDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("appointmentsch.jsp");
			dispatcher.forward(request, response);
		}
	}

}
