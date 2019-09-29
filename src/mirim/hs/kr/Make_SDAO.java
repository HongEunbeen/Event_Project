package mirim.hs.kr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Make_SDAO {
	private Connection conn = DBConnection.getConnection();
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertS(String phone, String hamberger, String drink, String desert1, String desert2, String chicken) {
		String SQL = "INSERT INTO MAKE_s ( PHONE, HAMBURGER, DRINK, DESERT1, DESERT2, CHICKEN) VALUES (?,'오징어버거',?,?,?,?) ";
		
		try {	
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, phone);
			pstmt.setString(2, drink);
			pstmt.setString(3, desert1);
			pstmt.setString(4, desert2);
			pstmt.setString(5, chicken);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
}
