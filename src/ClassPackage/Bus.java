package ClassPackage;
import java.util.ArrayList;

public class Bus {
	int BUS_ID; // 버스 아이디 (DB에서 가져다 씀),초기 버스 객체 생성이나 SEAT 갱신시에 사용 
	
	String GRADE; // 보통, 우등, 프리미엄
	String START_POINT; // 출발지 
	String END_POINT; // 도착지
	String START_TIME; // 출발시간 
	String END_TIME; // 도착시간 
	int TOTAL_SEAT_NUM;	
	Seat[] SEATS;
	
	public Bus (int busid, String grade,String startpoint,String endpoint, String starttime, String endtime, int totalseatnum) {
		BUS_ID = busid;
		GRADE = grade;
		START_POINT = startpoint;
		END_POINT = endpoint;
		START_TIME = starttime;
		END_TIME = endtime;
		TOTAL_SEAT_NUM = totalseatnum ; 
		SEATS = new Seat[TOTAL_SEAT_NUM];
	}
	
	
	
}
