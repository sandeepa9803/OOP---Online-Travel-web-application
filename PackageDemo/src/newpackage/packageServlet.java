package newpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/packageServlet")
public class packageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Destination = request.getParameter("userde" );
	    int numOfPassengers = Integer.parseInt (request.getParameter("passe"));
		
	    try {
		List <packagedetails> packdetails = packageDBUtil.validate(Destination, numOfPassengers);
		request .setAttribute ("packdetails", packdetails);
	    }
	    catch (Exception e) {
	    	e.printStackTrace();
	    }
	    
		RequestDispatcher dis = request .getRequestDispatcher("packageaccount.jsp");
	    dis.forward(request, response);
		
	}

}
