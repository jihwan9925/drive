package com.ajax.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.web.admin.model.service.AdminService;
import com.web.model.dto.MemberDTO;

/**
 * Servlet implementation class JsonSimpleServlet
 */
@WebServlet("/basicJson.do")
public class JsonSimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonSimpleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map pagemap=Map.of("cPage",1,"numPerpage",5);
		Map map=Map.of("type","userId","keyword","admin");
		
		List<MemberDTO> list = new AdminService().searchMember(pagemap,map);
		MemberDTO m = list.get(0); //한 회원의 정보
		System.out.println(m);
		
		//jsonsimple라이브러리를 이용해서 간편하게 객체를 전송할 수 있다.
		//단일객체를 전송시 JSONObject클래스를 이용 || 다수객체(배열,리스트)를 전송시 JSONArray클래스를 이용
		
		//단일 데이터를 json으로 전송하기
		//JSONObject 생성
		JSONObject jo = new JSONObject();
		//JSONObject가 제공하는 멤버메소드를 이용해서 전송할 데이터를 저장함
		//***key,value형식으로 저장***
		//put()메소드를 제공
		jo.put("userId", m.getUserId());
		jo.put("userName", m.getUserName());
		jo.put("age", m.getAge());
		jo.put("height", 180.5);
		jo.put("flag",true);
//		System.out.println(jo);
		
		//다수의 데이터를 json으로 전송하기
		JSONArray joa=new JSONArray();
		//JSONArray에는 리스트방식으로 JSONObject를 저장(add()를 이용)
		for(MemberDTO m1 : list) {
			JSONObject j=new JSONObject();
			j.put("userId", m1.getUserId());
			j.put("userName", m1.getUserName());
			j.put("age", m1.getAge());
			j.put("gender", String.valueOf(m1.getGender()));
			j.put("phone", m1.getPhone());
			j.put("height", 180.5);
			j.put("flag",true);
			joa.add(j);
		}
		
		
		//생성된 JSONObject를 전송
		response.setContentType("application/json;charset=utf-8");
//		response.getWriter().print(jo);
		response.getWriter().print(joa);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
