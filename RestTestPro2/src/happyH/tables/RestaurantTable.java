package happyH.tables;

import happyH.models.Restaurant;
import happyH.utils.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RestaurantTable {
	
	public final static String TABLE_NAME = "Restaurants";
	public final static String ID = "r_id";
	public final static String NAME = "r_name";
	public final static String DETAILS = "r_details";
	public final static String AVERAGE_PRICE = "ave_price";
	public final static String CUISINE_TYPE_ID = "ct_id";
	
	private static List<Restaurant> restList = new ArrayList<Restaurant> ();
	
	public static List<Restaurant> getAllRestaurants()
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
				Restaurant restaurant = constructUserFromResultSet(rs);
				restList.add(restaurant);
			}		
			return restList;
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
	
	private static Restaurant constructUserFromResultSet(ResultSet rs) {
		try {
			Restaurant rest = new Restaurant();
			rest.setR_id(rs.getInt(ID));
			rest.setR_name(rs.getString(NAME));
			rest.setR_details(rs.getString(DETAILS));
			rest.setAve_price(rs.getInt(AVERAGE_PRICE));
			rest.setCt_id(rs.getInt(CUISINE_TYPE_ID));
			return rest;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
