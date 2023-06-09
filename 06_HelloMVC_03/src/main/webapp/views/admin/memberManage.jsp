<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>   
 
<%

	List<MemberDTO> members=(List)request.getAttribute("members");

%>
    
    
    
<%@ include file="/views/common/header.jsp" %>    
<style type="text/css">
    section#memberList-container {text-align:center;}
    
    section#memberList-container table#tbl-member {width:100%; border:1px solid gray; border-collapse:collapse;}
    section#memberList-container table#tbl-member th, table#tbl-member td {border:1px solid gray; padding:10px; }
    #pageBar a{
    	text-decoration: none;
    	font-size: 24px;
    	margin-left:2%;
    	margin-right: 2;
    	color: magenta;
    }
    #pageBar a:hover{
    	background-color: lime;
    }
    #pageBar span{
    	color: gray;
    }
    
    /* 검색창에 대한 스타일 */
    div#search-container {margin:0 0 10px 0; padding:3px; 
    background-color: rgba(0, 188, 212, 0.3);}
    div#search-userId{display:inline-block;}
    div#search-userName{display:none;}
    div#search-gender{display:none;}
    div#numPerpage-container{float:right;}
    form#numperPageFrm{display:inline;}
    
    </style>
    
    <section id="memberList-container">
        <h2>회원관리</h2>
        
            <div id="search-container">
        	검색타입 : 
        	<select id="searchType" onchange="fn_changeSort();">
        		<option value="userId" >아이디</option>
        		<option value="userName" >회원이름</option>
        		<option value="gender" >성별</option>
        	</select>
        	<div id="search-userId">
        		<form action="<%=request.getContextPath()%>/admin/searchMember">
        			<input type="hidden" name="searchType" value="userId" >
        			<input type="text" name="searchKeyword" size="25" 
        			placeholder="검색할 아이디를 입력하세요" >
        			<button type="submit">검색</button>
        		</form>
        	</div>
        	<div id="search-userName">
        		<form action="<%=request.getContextPath()%>/admin/searchMember">
        			<input type="hidden" name="searchType" value="userName">
        			<input type="text" name="searchKeyword" size="25" 
        			placeholder="검색할 이름을 입력하세요">
        			<button type="submit">검색</button>
        		</form>
        	</div>
        	<div id="search-gender">
        		<form action="<%=request.getContextPath()%>/admin/searchMember">
        			<input type="hidden" name="searchType" value="gender">
        			<label><input type="radio" name="searchKeyword" value="M" >남</label>
        			<label><input type="radio" name="searchKeyword" value="F" >여</label>
        			<button type="submit">검색</button>
        		</form>
        	</div>
        </div>
        <div id="numPerpage-container">
        	페이지당 회원수 : 
        	<form id="numPerFrm" action="">
        		<select name="numPerpage" id="numPerpage">
        			<option value="10">10</option>
        			<option value="5" >5</option>
        			<option value="3" >3</option>
        		</select>
        	</form>
        </div>
        
        <table id="tbl-member">
            <thead>
                <tr>
            		<th>아이디</th>
		    		<th>이름</th>
		    		<th>성별</th>
		    		<th>나이</th>
		    		<th>이메일</th>
		    		<th>전화번호</th>
		    		<th>주소</th>
		    		<th>취미</th>
		    		<th>가입날짜</th>
                </tr>
            </thead>
            <tbody>
       	    <!-- 조회된 결과가 없으면 한줄(row)로 결과가 없습니다 출력하고
	    조회된 결과가 있으면 각 객체를 tr로 출력하는 구문을 작성할것 -->
	    	<%if(members.isEmpty()) {%>
	    		<tr><td colspan="9">결과없음</td></tr>
            <%}else { 
            	for(MemberDTO m : members){%>  
            	<tr>
            		<td><%=m.getUserId() %></td>
		    		<td><%=m.getUserName() %></td>
		    		<td><%=m.getGender() %></td>
		    		<td><%=m.getAge() %></td>
		    		<td><%=m.getEmail() %></td>
		    		<td><%=m.getPhone() %></td>
		    		<td><%=m.getAddress() %></td>
		    		<td><%=m.getHobby()!=null?String.join(",",m.getHobby()):""%></td>
		    		<td><%=m.getEnrollDate() %></td>
                </tr>
         	<%} 
         	}%>
            </tbody>
        </table>
        <div id="pageBar">
 			<%=request.getAttribute("pageBar") %>       
        </div>
    </section>
    
    <script>
    $("#searchType").change(e=>{
    	const type=$(e.target).val(); //해당객체의 value가져오기
    	$(e.target).parent().find("div").css("display","none"); //해당객체의 부모객체의 모든 자손객체를 찾아 .css("display","none")대입
    	$("#search-"+type).css("display","inline-block"); //체크된 부분만 가시화
    })
	</script>
    
<%@ include file="/views/common/footer.jsp" %>
