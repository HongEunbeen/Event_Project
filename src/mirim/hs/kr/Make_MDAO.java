package mirim.hs.kr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Make_MDAO {
	private Connection conn = DBConnection.getConnection();
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertM(String phone, String name, String coupon) {
		String SQL = "INSERT INTO MAKE_M (PHONE, NAME, COUPON) VALUES (?,?,?) ";
		
		try {	
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, phone);
			pstmt.setString(2, 	name);
			pstmt.setString(3, coupon);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public int selectM(String phone) {
		String SQL = "SELECT PHONE FROM MAKE_M WHERE PHONE = ?";
		
		try {	
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, phone);
		
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
}
