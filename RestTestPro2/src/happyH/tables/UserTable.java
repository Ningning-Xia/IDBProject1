package happyH.tables;

import happyH.models.User;
import happyH.utils.DBUtil;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserTable {
	
	public final static String TABLE_NAME = "Users";
	public final static String ID = "u_id";
	public final static String NAME = "u_name";
	public final static String EMAIL = "u_email";
	public final static String ACCOUNT = "u_account";
	public final static String PREFERENCE_TYPE = "pref_type";
	
	private static List<User> userList = new ArrayList<User> ();
	
	public static List<User> getAllUsers()
	{
		String sql = "SELECT * FROM "+TABLE_NAME;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnectionFromDataSource();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next())
			{
				User user = constructUserFromResultSet(rs);
				userList.add(user);
			}		
			return userList;
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();
				} 
				catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return null;
	}
	
	private static User constructUserFromResultSet(ResultSet rs) {
		try {
			User user = new User();
			user.setU_id(rs.getInt(ID));
			user.setU_name(rs.getString(NAME));
			user.setU_email(rs.getString(EMAIL));
			user.setU_account(rs.getString(ACCOUNT));
			user.setPref_type(rs.getString(PREFERENCE_TYPE));
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
