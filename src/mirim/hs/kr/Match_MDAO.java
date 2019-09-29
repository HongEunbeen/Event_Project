package mirim.hs.kr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Match_MDAO {
	private Connection conn = DBConnection.getConnection();
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertM(String phone, String name, String coupon) {
		String SQL = "INSERT INTO MATCH_M (PHONE, NAME, COUPON) VALUES (?,?,?) ";
		
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
	public ArrayList<Match_M> selectAll() {
		String SQL = "SELECT name, phone, coupon FROM match_m;";
		ArrayList<Match_M> list = new ArrayList<>();
		try {		
			pstmt = conn.prepareStatement(SQL);
		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Match_M match = new Match_M();
				match.setName(rs.getString(1));
				match.setPhone(rs.getString(2));
				match.setCoupon(rs.getString(3));
				System.out.print(match.getName());
				list.add(match);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; //데이터베이스 오류
	}
}
