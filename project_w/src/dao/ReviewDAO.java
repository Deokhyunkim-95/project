package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;
import vo.ReviewVO;

public class ReviewDAO {
	public List<ReviewVO> reviewList(ReviewVO vo){
		String sql = "select * from REVIEW where fid = ? and eval = ? ";
		
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs =null;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, vo.getFid());
			ps.setString(2, vo.getEval());
			
			rs = ps.executeQuery();
			while (rs.next()) {
				vo.setUserid(rs.getString("userid"));
				vo.setText(rs.getString("text"));
				vo.setImage(rs.getString("image"));
				vo.setDate(rs.getDate("date"));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(con, ps, rs);
		}
		return list;
	}

}
