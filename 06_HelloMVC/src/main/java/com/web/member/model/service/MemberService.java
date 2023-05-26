package com.web.member.model.service;

import java.sql.Connection;

import com.web.member.model.dao.MemberDao;
import com.web.member.model.vo.Member;
import static com.web.common.JDBCTemplate.*;
public class MemberService {
	
	private MemberDao dao=new MemberDao();
	
	public Member selectByUserIdAndPw(String userId,String password) {
		Connection conn=getConnection();
		Member m=dao.selectByUserIdAndPw(conn,userId,password);
		close(conn);
		return m;
	}
}







