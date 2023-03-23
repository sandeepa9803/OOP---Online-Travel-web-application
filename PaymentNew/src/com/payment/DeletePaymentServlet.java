package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int PaymentID=Integer.parseInt(request.getParameter("paymentid"));
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.deletepayment(PaymentID);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("PaymentInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<payment> paydetails = PaymentDBUtil.getpaymentdetails(PaymentID);
			request.setAttribute("paydetails", paydetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}

}
	
}
