package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DiagnosticsServlet")
public class DiagnosticsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String patientid = request.getParameter("pid");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String diagnostics = request.getParameter("diag");
		String prescription = request.getParameter("pres");

		
		boolean isTrue;
		
		isTrue = DoctorDButil.insertDiagnostics(patientid, name, age, diagnostics, prescription);
		
		if(isTrue ==  true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsccess.jsp");	
			dis1.forward(request, response);
		}
		
	}

}
