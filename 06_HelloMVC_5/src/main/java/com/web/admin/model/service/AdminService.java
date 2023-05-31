package com.web.admin.model.service;

import static com.web.common.JDBCTemplate.close;
import static com.web.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.web.admin.model.dao.AdminDao;
import com.web.model.dto.MemberDTO;

public class AdminService {

	private AdminDao dao = new AdminDao();
	
	public List<MemberDTO> viewMember(int cPage, int numPerPage) {
		Connection conn = getConnection();
		List<MemberDTO> m=dao.viewMember(conn,cPage,numPerPage);
		close(conn);
		return m;
		
	}
	
	public int selectMemberCount() {
		Connection conn=getConnection();
		int result=dao.selectMemberCount(conn);
		close(conn);
		return result;
	}
	
}
