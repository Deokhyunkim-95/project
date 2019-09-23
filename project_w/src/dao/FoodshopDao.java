package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;
import vo.FoodshopVO;

public class FoodshopDao {
	
	public int insertFoodshop(FoodshopVO vo) {

		String sql = " INSERT INTO foodshop(fid, fname , address, latitude, longitude, foodstyle, image, loc, discount, holiday, octime, tel) "
				+ " VALUES((select nvl(max(fid),0)+1 from foodshop),?,?,?,?,?,?,?,?,?,?,?) ";
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

			//? 세팅
			ps.setString(1, vo.getFname());
			ps.setString(2, vo.getAddress());
			ps.setString(3, vo.getLatitude());
			ps.setString(4, vo.getLongitude());
			ps.setString(5, vo.getFoodstyle());
			ps.setString(6, vo.getImage());
			ps.setString(7, vo.getLoc());
			ps.setInt(8, vo.getDiscount());
			ps.setString(9, vo.getHoliday());
			ps.setString(10, vo.getOctime());
			ps.setString(11, vo.getTel());

			System.out.println("ps "+ps);
			System.out.println("vo "+vo);
//			System.out.println("sql  : "+sql);
			//실행 및 결과값 핸들링
			result = ps.executeUpdate();
//			System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
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
	
	public List<FoodshopVO> showfoodshop(String fname) {
		
		String sql = "select * from foodshop where fname = ?";
		System.out.println("showfoodshop DAO");
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0 ;
		List<FoodshopVO> list = new ArrayList<FoodshopVO>();
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			ResultSet rs = null;
			//? 세팅
			ps.setString(1, fname);
			
			//실행 및 결과값 핸들링
			rs= ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return list;
		
	}
	
}
