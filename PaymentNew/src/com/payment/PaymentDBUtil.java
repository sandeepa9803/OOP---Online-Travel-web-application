package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class PaymentDBUtil {
	
	   
		private static boolean isSuccess;
	    private static Connection con = null;
	    private static Statement stmt  = null;
	    private static ResultSet rs =  null;
  
        public static List<payment> validate(String CardHoldersName,String CardNumber ,int SecurityCode,String ExpireDate) {
		
		ArrayList<payment> pay = new ArrayList<>();
		
		
		
		try {
		    con = DBConnect.getConnection();
		    stmt = con.createStatement();
			String sql = "select * from  paymentform where CardHoldersName  ='"+CardHoldersName+"' and CardNumber= '"+CardNumber+"' and SecurityCode='"+SecurityCode+"' and ExpireDate = '"+ExpireDate+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int PaymentID = rs.getInt(1);
				String CardHoldersNameC = rs.getString(2);
				String CardNumberN = rs.getString(3);
				int SecurityCodeS   = rs.getInt(4);
				String ExpireDateE = rs.getString(5);
				
				
				payment p = new payment(PaymentID,CardHoldersNameC,CardNumberN,SecurityCodeS,ExpireDateE);
				pay.add(p);
					
			}
			
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pay;
		
	}
       
        
       //insert
       public static boolean insertpayment(String CardHoldersName,String CardNumber,int SecurityCode,String ExpireDate) {
    	   
    	   boolean isSuccess = false;
   		
   		try {
   			
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            
			String sql ="insert into paymentform values (0,'"+CardHoldersName+"','"+CardNumber+"','"+SecurityCode+"','"+ExpireDate+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
   		}
   			
   		
   		catch (Exception e) {
			e.printStackTrace();
			
		}
    	   
   		
   		return isSuccess;
    	   
       }
       
       
       //update
       public static boolean updatepayment(int PaymentID,String CardHoldersName,String CardNumber,int SecurityCode,String ExpireDate) {
    	   
    	   try {
    		   con=DBConnect.getConnection();
    		   stmt=con.createStatement();
    		   String sql ="update paymentform set CardHoldersName='"+CardHoldersName+"',CardNumber='"+CardNumber+"',SecurityCode='"+SecurityCode+"',ExpireDate='"+ExpireDate+"'"
    				   +"where PaymentID='"+PaymentID+"'";
    		   int rs= stmt.executeUpdate(sql);
    	   
    	   if(rs>0) {
    		   isSuccess =true;
    	   }
    	   else {
    		   isSuccess =false;
    	   }
    	   
    	   }
    	   
    	   
    	   
    	   
    	   catch(Exception e) {
    		   e.printStackTrace();
    	   }
    	   
    	   return isSuccess;
       }
       
       
       //retrive
       public static List<payment> getpaymentdetails(int PaymentID1) {
	
	
    	   
    	   ArrayList<payment> pay = new ArrayList<>();
    	   
    	   try {
    		   
    		   con=DBConnect.getConnection();
    		   stmt=con.createStatement();
    		   String sql = "select * from paymentform where PaymentID='"+PaymentID1+"'";
    		   rs=stmt.executeQuery(sql);
    		   
    		   while(rs.next()) {
    			   int PaymentID = rs.getInt(1);
    			   String CardHoldersName = rs.getString(2);
    			   String CardNumber = rs.getString(3);
    			   int SecurityCode = rs.getInt(4);
    			   String ExpireDate = rs.getString(5);
    			   
    			   payment p = new payment(PaymentID,CardHoldersName,CardNumber,SecurityCode,ExpireDate);
    			   pay.add(p);
    		   }
    		   
    	   }
    	   catch(Exception e) {
    		   e.printStackTrace();
    	   }
    		   
    	   
    	   return pay;
       }
       
       public static boolean deletepayment(int PaymentID2) {
    	   
    	   try {
    		   
    		   con = DBConnect.getConnection();
    		   stmt = con.createStatement();
    		   String sql = "delete from paymentform where PaymentID='"+PaymentID2+"'";
    		   int rs = stmt.executeUpdate(sql);
    		   
    		   if(rs > 0) {
    			   
    			   isSuccess = true;
    		   }
    			   
    		   else{
    			   
    			   isSuccess = false;
    				   
    				   
    			   }
    			   
    		   
    	   }
    	   catch(Exception e) {
    		   e.printStackTrace();
    	   }
    	   
    	   
    	   return isSuccess;
       }
	
	 
}