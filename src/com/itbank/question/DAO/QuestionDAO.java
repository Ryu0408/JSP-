package com.itbank.question.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class QuestionDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private Context init;
	private DataSource ds;
	private ResultSet rs;
	private static QuestionDAO instance;

	public static QuestionDAO getInstance() {
		if (instance == null)
			instance = new QuestionDAO();
		return instance;
	}

	public QuestionDAO() {
		try {
			init = (Context) new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			System.out.println("DAO 생성자 예외 : " + e);
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
		}
	}

	public void insertQuestion(String name, String phonenum, int q1, int q2, int q3, int q4, int q5, int q6,
			String q7) {
		String sql = "insert into question values(qnum.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql); // setString은 따옴표를 자동으로 처리해준다
			pstmt.setString(1, name);
			pstmt.setString(2, phonenum);
			pstmt.setInt(3, q1);
			pstmt.setInt(4, q2);
			pstmt.setInt(5, q3);
			pstmt.setInt(6, q4);
			pstmt.setInt(7, q5);
			pstmt.setInt(8, q6);
			pstmt.setString(9, q7);
			pstmt.executeUpdate();
		} catch (SQLIntegrityConstraintViolationException e) {
		} catch (SQLException e) {
			System.out.println("insertQuestion - SQLException : " + e);
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e1) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e1) {
				}
		}
	}

	public int[][] selectQuestionSum() {
		int[][] array = new int[6][6];
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			for (int i = 0; i < 6; i++) {
				for (int j = 0; j < 5; j++) {
					String sql = "select count(*) as co from question where q" + (i + 1) + "=" + (j + 1);
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						array[i][j] = rs.getInt("co");
						array[i][5] += array[i][j];
					}
				}
			}
			return array;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)
				try {
					pstmt.close();
				} catch (Exception e1) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e1) {
				}
		}
		return null;
	}

	public ArrayList<String> selectQuestion7Answer() {
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			ArrayList<String> q7List = new ArrayList<String>();
			String sql = "select q7 from question order by num desc";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String q7 = rs.getString("q7");
				q7List.add(q7);
			}
			return q7List;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)
				try {
					pstmt.close();
				} catch (Exception e1) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e1) {
				}
		}
		return null;
	}
	
	public int selectphonenumCheck(String phonenum) {
		try {
			int phonenumCheck = 0;
			conn = ds.getConnection();
			stmt = conn.createStatement();
			String sql = "select count(*) as checkNum from question where phonenum = '"+ phonenum + "'";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				phonenumCheck = rs.getInt("checkNum");
			}
			return phonenumCheck;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)
				try {
					pstmt.close();
				} catch (Exception e1) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e1) {
				}
		}
		return 0;
	}
	

}