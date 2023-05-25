package com.model.service;

//import static com.jsp.common.JDBCTemplate.getConnection;
import static com.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.jsp.model.dao.MemberDao;
import com.jsp.model.dto.MemberDto;

public class MemberService {
	
	private MemberDao dao=new MemberDao();

	public List<MemberDto> selectMemberAll(){
		Connection conn=getConnection();
		List<MemberDto> list=dao.selectMemberAll(conn);
		close(conn);
		return list;
	}
	
	public List<MemberDto> selectMemberKeyword(String name){
		// conn과 name을 보내고 , 결과값을 받아 반환한다.
		Connection conn=getConnection();
		List<MemberDto> list=dao.selectMemberKeyword(conn,name);
		close(conn);
		return list;
	}
}
