package ClassPackage;

//import java.util.ArrayList;

public class Reservation {
	//ArrayList<Integer> SEAT_NUM; // 선택한 좌석 넘버 ARRAY
	int RESERVE_ID; // 예매번호 
	String DATE; // 버스 DB에서 생성시에 저장해놓음
	Person_type PERSON_TYPE_AND_PRICE; // 유아, 학생, 성인 탑승자 유형
	Bus BUS; // 예매한 버스 객체
	Payment PAYMENT; // 회원의 결제 정보

	
	public Reservation(String date, String person_type) {

	}

	
	
	public class Person_type { // price 여기서 책정 후 payment의 won에 값을 넘겨줌 
		int CHILDREN;
		int STUDENT;
		int ADULT;
		int PRICE;

		public Person_type() {
			CHILDREN = 0;
			STUDENT = 0;
			ADULT = 0;
			PRICE = 0;
		}

		public Person_type(int a, int b, int c) {
			CHILDREN = a;
			STUDENT = b;
			ADULT = c;
		}
	}

}
