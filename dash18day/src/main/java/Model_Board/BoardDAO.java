package Model_Board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	PreparedStatement psmt1 = null;
	ResultSet rs = null;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("연결성공");
		
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "walk";
			String db_pw = "walk";
		
			conn=DriverManager.getConnection(db_url, db_id, db_pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void close() {		
		try {
				if(rs!=null) {
					rs.close();
				}
				if(psmt !=null) {
					psmt.close();
				}
				if(conn!=null) {
					conn.close();
				}			
		} catch (SQLException e) {				
			e.printStackTrace();
		}
	}
	
	public int write(String title,String writer,String content) {
		int cnt=0;
		try {
			getConn();
			
			String sql = "insert into write_table values(num_message.nextval,?,?,?,sysdate)";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, title);
			psmt.setString(2, writer);
			psmt.setString(3, content);
			
						
			cnt=psmt.executeUpdate();						
			
		} catch (Exception e) {			
			e.printStackTrace(); 
			System.out.println("오류1");
		} finally {
			close();			
		}
		return cnt;		
		
	}
	
	
	
	public ArrayList<BoardVO> showWrite() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
	
		try {
			
			getConn();
							
			
			String sql = "select * from write_table";
			psmt=conn.prepareStatement(sql);
			
			
						
			rs = psmt.executeQuery();
			
			while(rs.next()) {				
				int num = rs.getInt("num");
				String title = rs.getString("title");
				String writer =rs.getString("writer");
				String content =rs.getString("content");
				String M_date = rs.getString("m_date");
				
				
				BoardVO vo = new BoardVO(num, title, writer, content, M_date);
				
				list.add(vo);								
			
			}	
		} catch (Exception e) {			
			e.printStackTrace(); 
			System.out.println("실패4");
		} finally {
			close();			
		}
		return list;
	}
	
	public BoardVO showOne(String seq_num) {
		BoardVO vo =null;
	
		try {
			getConn();
			
			String sql="select * from write_table where num=?";			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, seq_num);
			rs = psmt.executeQuery();
			if(rs.next()) {
				int num = rs.getInt("num");
				String title = rs.getString("title");
				String writer =rs.getString("writer");
				String content =rs.getString("content");
				String M_date = rs.getString("m_date");
				
				
				vo = new BoardVO(num, title, writer, content, M_date);
				
				
			}
			
		
			
		}catch (Exception e) {			
			e.printStackTrace(); 
			System.out.println("실패2");
		} finally {
			close();			
		}
		return vo;
	}
	
	
	
	
	
	
	
	
	

}
