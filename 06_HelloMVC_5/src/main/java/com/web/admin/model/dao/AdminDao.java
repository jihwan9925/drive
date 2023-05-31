package com.web.admin.model.dao;

import static com.web.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static com.web.model.dao.MemberDao.*;
import static com.web.common.JDBCTemplate.*;



import com.web.model.dto.MemberDTO;

public class AdminDao {
	
private final Properties sql=new Properties();//final => 성능up
	
	{ //
		String path=AdminDao.class.getResource("/sql/admin/adminsql.properties").getPath();
		try(FileReader fr=new FileReader(path);) {
			sql.load(fr);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	public List<MemberDTO> viewMember(Connection conn, int cPage, int numPerPage ){
		PreparedStatement pstmt=null;
		List<MemberDTO> result=new ArrayList();;
		ResultSet rs=null;

		try {
			pstmt=conn.prepareStatement(sql.getProperty("viewMember"));
			pstmt.setInt(1, (cPage-1)*numPerPage+1);
			pstmt.setInt(2, cPage*numPerPage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				result.add(getMember(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
			
	}
	
	public int selectMemberCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql.getProperty("selectMemberCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result=rs.getInt(1); //여기서 1은 name,phone와 같은 컬럼을 조회하기위해 오라클에서 기본으로 매핑한 숫자를 사용(1=id)
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return result;
	}
	
	
}
