package mirim.hs.kr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ReviewDAO {
	private Connection conn = DBConnection.getConnection();
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int setReview(String name, String password, String content) {
		String SQL = "INSERT INTO REVIEW (NAME, PASSWORD, CONTENT, WRITE) VALUES (?,?,?,SYSDATE) ";
		
		try {	
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, content);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public ArrayList<Review> getReview(){
		String SQL = "SELECT  NAME, PASSWORD, CONTENT, HEART, WRITE, NUM FROM REVIEW";
		ArrayList<Review> list = new ArrayList<Review>();
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Review review = new Review();
				review.setName(rs.getString(1));
				review.setPassword(rs.getString(2));
				review.setContent(rs.getString(3));
				review.setHeart(rs.getInt(4));
				review.setWrite(rs.getString(5));
				review.setNum(rs.getInt(6));
				
				list.add(review);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int updateHeart(int num) {
		String SQL = "UPDATE REVIEW SET HEART = HEART + 1 WHERE NUM = ?";
		try {	
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, num);
		
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
}
