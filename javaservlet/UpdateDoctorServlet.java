package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("docid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String special = request.getParameter("special");
		String pwd= request.getParameter("pwd");
		String cnfrmpwd = request.getParameter("cnfrmpwd");
		
		boolean isTrue;
		
		isTrue = DoctorDButil.updateDoctor(id, name, email, mobile, special, pwd, cnfrmpwd);
		
		if(isTrue ==  true) {
			
			List<Doctor> docDetails = DoctorDButil.getDoctorDetails(id);
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Doctor> docDetails = DoctorDButil.getDoctorDetails(id);
			request.setAttribute("docDetails", docDetails);
			 
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
		}
	}

}
