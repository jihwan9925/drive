package com.ajax.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.admin.model.service.AdminService;
import com.web.model.dto.MemberDTO;

/**
 * Servlet implementation class AjaxUserIdSearchServlet
 */
@WebServlet("/searchId.do")
public class AjaxUserIdSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxUserIdSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 타입이 userId(찾는값이 userId)이고, 찾을 키워드가 변수userId인 회원을 찾는 로직
		String userId = request.getParameter("id");
		Map pagemap=Map.of("cPage",1,"numPerpage",30);
		Map map=Map.of("type","userId","keyword",userId);
		
		List<MemberDTO> members = new AdminService().searchMember(pagemap , map);
//		members.stream().forEach(System.out::println);
		List<String> userIds = members.stream().map(e->e.getUserId()).collect(Collectors.toList());
		// 위아래가 같은 의미를 가지는 로직이다
		String data="";
		for(int i=0;i<members.size();i++) {
			if(i!=0) data+=",";
			data+=members.get(i).getUserId();
		}
		System.out.println(userIds);
		response.setContentType("text/csv;charset=utf-8");
		response.getWriter().print(data);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
