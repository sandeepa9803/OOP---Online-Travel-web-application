package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/paymentServlet")
public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String CardHoldersName = request.getParameter("cardholder");
	    String CardNumber = request.getParameter("cardnum");
	    int SecurityCode = Integer.parseInt(request.getParameter("cvcnum"));
	    String ExpireDate = request.getParameter("date");
	    try {
		List <payment> paydetails = PaymentDBUtil.validate(CardHoldersName,CardNumber,SecurityCode,ExpireDate);
		request.setAttribute("paydetails", paydetails);
	    }
	    catch (Exception e) {
	    	e.printStackTrace();
	    }
	    
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	    dis.forward(request, response);
		
	}
	
	}

