package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.JDBCUtil;
import vo.FoodshopVO;

public class FoodshopDao {
	
	public int insertFoodshop(FoodshopVO vo) {

		String sql = " INSERT INTO foodshop(fid, fname , address, foodstyle, image, image_menu, loc, discount, holiday, octime, tel) "
				+ " VALUES((select nvl(max(fid),0)+1 from foodshop),?,?,?,?,?,?,?,?,?,?) ";
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

			//? 세팅
			ps.setString(1, vo.getFname());
			ps.setString(2, vo.getAddress());
			ps.setString(3, vo.getFoodstyle());
			ps.setString(4, vo.getImage());
			ps.setString(5, vo.getImage_menu());
			ps.setString(6, vo.getLoc());
			ps.setInt(7, vo.getDiscount());
			ps.setString(8, vo.getHoliday());
			ps.setString(9, vo.getOctime());
			ps.setString(10, vo.getTel());

			
			//실행 및 결과값 핸들링
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
	
	public int discountsearch(FoodshopVO vo) {
		String sql = "select * from foodshop where discount = ? ";
		System.out.println("search 완료");
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//? 세팅
			ps.setInt(1, vo.getDiscount());
			
			//실행 및 결과값 핸들링
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
	
	public int locsearch(FoodshopVO vo) {
		String sql = "select * from foodshop where loc = ? ";
		System.out.println("search 완료");
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//? 세팅
			
			//실행 및 결과값 핸들링
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
	
	
}
