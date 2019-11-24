package ClassPackage;
import java.util.ArrayList;

public class Bus {
	String LEVEL; // 보통, 우등, 프리미엄 ?
	String STARTPOINT; // 출발지 
	String ENDPOINT; // 도착지
	String STARTTIME; // 출발시간 
	String ENDTIME; // 도착시간 
	int SEATNUM;
	ArrayList<Seat> SEATS;
	
	public Bus (String level,String startpoint,String endpoint, String starttime, String endtime, int seatnum,ArrayList seat) {
		LEVEL = level;
		STARTPOINT = startpoint;
		ENDPOINT = endpoint;
		STARTTIME = starttime;
		ENDTIME = endtime;
		SEATNUM = seatnum ; 
		SEATS = new ArrayList<Seat>(seatnum);

	}
	
	
	
}
