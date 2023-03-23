package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class packageDBUtil {
	
	public static List <packagedetails> validate(String Destination,int numOfPassengers) {
		
		ArrayList <packagedetails> pack = new ArrayList <>() ;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/package";
		String user = "root";
		String pass = "sankalpa";
		
		
		
		
		//validate
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from  packagedetails where Destination ='"+Destination+"' and  numOfPassengers= '"+numOfPassengers+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next ()) {
				int packageID = rs.getInt(1);
				String packageName = rs.getString(2);
				String Destination1 = rs.getString(3);
				int numOfDays   = rs.getInt(4);
				int numOfPassengers1 = rs.getInt(5);
				int totalAmount = rs.getInt(6);
				
				packagedetails p = new packagedetails (packageID,packageName,Destination1,numOfDays,numOfPassengers1,totalAmount);
				pack.add(p);
					
			}
			
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pack;
		
	}
	

}
