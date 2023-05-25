package com.jsp.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static com.jsp.common.JDBCTemplate.*;

import com.jsp.model.dto.MemberDto;

public class MemberDao {

	public List<MemberDto> selectMemberAll(Connection conn){
		String sql="SELECT * FROM MEMBER";
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDto> list=new ArrayList();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDto m=MemberDto.builder()
						.memberId(rs.getString("member_id"))
						.memberPwd(rs.getString("member_pwd"))
						.memberName(rs.getString("member_name"))
						.age(rs.getInt("age"))
						.gender(rs.getString("gender"))
						.email(rs.getString("email"))
						.phone(rs.getString("phone"))
						.address(rs.getString("address"))
						.hobby(rs.getString("hobby"))
						.enrollDate(rs.getDate("enroll_date"))
						.build();
				list.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}
	
	
	public List<MemberDto> selectMemberKeyword(Connection conn, String name){
		String sql="SELECT * FROM MEMBER WHERE MEMBER_NAME LIKE ?";
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDto> list=new ArrayList();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDto m=MemberDto.builder()
						.memberId(rs.getString("member_id"))
						.memberPwd(rs.getString("member_pwd"))
						.memberName(rs.getString("member_name"))
						.age(rs.getInt("age"))
						.gender(rs.getString("gender"))
						.email(rs.getString("email"))
						.phone(rs.getString("phone"))
						.address(rs.getString("address"))
						.hobby(rs.getString("hobby"))
						.enrollDate(rs.getDate("enroll_date"))
						.build();
				list.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}
}
