package ClassPackage;

public class Payment {
	Card CARD;
	int WON;
	
	public Payment(String company, int number, int won) {
		CARD = new Card(company,number);
		WON = won;
	}


}
