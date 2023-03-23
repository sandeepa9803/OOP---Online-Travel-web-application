package newpackage;

public class packagedetails {

	private int packageID;
	private String packageName;
	private String Destination;
	private int numOfDays;
	private int numOfPassengers;
	private int totalAmount;
	public packagedetails(int packageID, String packageName, String destination, int numOfDays, int numOfPassengers,int totalAmount) {
		
		this.packageID = packageID;
		this.packageName = packageName;
		Destination = destination;
		this.numOfDays = numOfDays;
		this.numOfPassengers = numOfPassengers;
		this.totalAmount = totalAmount;
	}
	public int getPackageID() {
		return packageID;
	}
	public String getPackageName() {
		return packageName;
	}
	public String getDestination() {
		return Destination;
	}
	public int getNumOfDays() {
		return numOfDays;
	}
	public int getNumOfPassengers() {
		return numOfPassengers;
	}
	public int getTotalAmount() {
		return totalAmount;
	}

	
	
}
