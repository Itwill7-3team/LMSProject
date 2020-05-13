package com.review.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.lecture.db.LectureDTO;


public class ReviewDAO {
	Connection con= null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	ResultSet rs2= null;
	String sql="";
	
	
	
	private Connection getConnection() throws Exception{
		
		Context init=new InitialContext();
		
		DataSource ds=
				(DataSource) init.lookup("java:comp/env/jdbc/codefarmDB"); 
		con = ds.getConnection();
		
		return con;

	}//DB연결
	
	
	public void closeDB(){
		try {
			if(rs !=null) rs.close();
			if(rs2 !=null) rs2.close();
			if(pstmt !=null) pstmt.close();
			if(con !=null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}//자원 해제
	public ArrayList<ReviewDTO> getStarList(){
		//별점 게시판 리스트 가져오는 메서드
		ArrayList<ReviewDTO> starList=new ArrayList<ReviewDTO>();
		try{
			con=getConnection();
			sql="select * from r_board";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			while(rs.next()){
				ReviewDTO sdto =new ReviewDTO();
				
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeDB();
		}
		return starList;
	}
	
	// getAvgrating() 강의별 평균 별점 가져오기
	public Map<String, Object> getAvgrating(int l_number){
		Map<String, Object> review_rating = new HashMap<>();
		try {
			con = getConnection();
			System.out.print("getLectureDetail() : ");
			sql = "select "
				+ "  count(*) reviewAll, round(avg(r_rating), 1) rating_avg, "
				+ "  count(if(r_rating=5, r_rating, null)) rating_5, count(if(r_rating=4, r_rating, null)) rating_4, "
				+ "  count(if(r_rating=3, r_rating, null)) rating_3, count(if(r_rating=2, r_rating, null)) rating_2, "
				+ "  count(if(r_rating=1, r_rating, null)) rating_1 "
				+ "from   r_board "
				+ "where  r_re_lev = 0 and r_l_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, l_number);
			rs = pstmt.executeQuery();
			if(rs.next()){
				review_rating.put("reviewAll", rs.getInt("reviewAll"));
				review_rating.put("rating_avg", rs.getDouble("rating_avg"));
				review_rating.put("rating_5", rs.getInt("rating_5"));
				review_rating.put("rating_4", rs.getInt("rating_4"));
				review_rating.put("rating_3", rs.getInt("rating_3"));
				review_rating.put("rating_2", rs.getInt("rating_2"));
				review_rating.put("rating_1", rs.getInt("rating_1"));
			}
			System.out.println("강의별 리뷰 정보 가져오기 완료");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return review_rating;
	}
	// getAvgrating() 강의별 평균 별점 가져오기
	
	// getReviewCount(l_number)
	public int getReviewCount(int l_number){
		int check = 0;
		try {
			con = getConnection();
			System.out.print("getReviewCount() : ");
			
			sql = "select count(*) from r_board where r_l_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, l_number);
			rs = pstmt.executeQuery();
			if(rs.next()){
				check = rs.getInt(1);
			}
			System.out.println("강의별 리뷰 전체 개수 : " + check);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return check;
	}
	// getReviewCount(l_number)
	
	// getReviewList(l_number, count);
		public ArrayList<ReviewDTO> getReviewList(int l_number, int count){
			ArrayList<ReviewDTO> ReviewList = new ArrayList<>();
			int startRow = 0;
			try {
				con = getConnection();
				System.out.print("getReviewList() : ");
				// 최초 2개만 로드 & 이후 전체 로드
				if(count <= 2){ startRow = 0; }
				else if(count > 2){ startRow = 2; }
				sql = "select   * "
					+ "from     r_board "
					+ "where    r_l_num = ? "
					+ "order by r_re_ref desc, r_re_seq asc "
					+ "limit    ?, ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, l_number);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, count);
				rs = pstmt.executeQuery();
				while(rs.next()){
					ReviewDTO rdto = new ReviewDTO();
					rdto.setR_number(rs.getInt("r_num"));
					rdto.setR_l_number(rs.getInt("r_l_num"));
					rdto.setR_l_title(rs.getString("r_l_title"));
					rdto.setR_content(rs.getString("r_content"));
					rdto.setR_writer(rs.getString("r_writer"));
					rdto.setR_rating(rs.getInt("r_rating"));
					rdto.setR_re_lev(rs.getInt("r_re_lev"));
					rdto.setR_re_ref(rs.getInt("r_re_ref"));
					rdto.setR_re_seq(rs.getInt("r_re_seq"));
					rdto.setR_reg_date(rs.getTimestamp("r_reg_date"));
					ReviewList.add(rdto);
				}
				System.out.println("성공 (개시글 갯수) : " + ReviewList.size());
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			return ReviewList;
		}
		// getBoardList(l_number, count);
}
