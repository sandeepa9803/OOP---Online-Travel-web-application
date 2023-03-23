package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int PaymentID=Integer.parseInt(request.getParameter("paymentid"));
	    String CardHoldersName=request.getParameter("cardholder");
	    String CardNumber=request.getParameter("cardnum");
	    int SecurityCode = Integer.parseInt (request.getParameter("cvcnum"));
	    String ExpireDate=request.getParameter("date");
	    
	    boolean isTrue;
	    
	    isTrue = PaymentDBUtil.updatepayment(PaymentID, CardHoldersName, CardNumber, SecurityCode, ExpireDate);
	    
	    if(isTrue == true) {
	    	
	    	List<payment> paydetails = PaymentDBUtil.getpaymentdetails(PaymentID);
	    	request.setAttribute("paydetails", paydetails);
	    	
	    	
	    	RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	    	dis.forward(request, response);
	    	
	    	
	    }
	    
	    else {
	    	List<payment> paydetails = PaymentDBUtil.getpaymentdetails(PaymentID);
	    	request.setAttribute("paydetails", paydetails);
	    	
	    	RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	    	dis.forward(request, response);
	    	
	    }
	}

}

