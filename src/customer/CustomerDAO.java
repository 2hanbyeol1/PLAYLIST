package customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class CustomerDAO {
	
	public int signup(String userId, String userPassword) {
		String SQL = "INSERT INTO CUSTOMER VALUES (?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPassword);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(conn != null) conn.close(); } catch (Exception e) {e.printStackTrace();}
			try { if(pstmt != null) pstmt.close(); } catch (Exception e) {e.printStackTrace();}
		}
		return -1;
	}
	
	public int login(String userId, String userPassword) {
		String SQL = "SELECT userPassword FROM CUSTOMER WHERE userID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;
				} else {
					return 0;
				}
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(conn != null) conn.close(); } catch (Exception e) {e.printStackTrace();}
			try { if(pstmt != null) pstmt.close(); } catch (Exception e) {e.printStackTrace();}
			try { if(rs != null) rs.close(); } catch (Exception e) {e.printStackTrace();}
		}
		return -2;
	}

}