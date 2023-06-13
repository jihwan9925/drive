<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery ajax</title>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
    <h2>jquery가 제공하는 함수 이용하기</h2>
    <ol>
        <li>$.ajax({}) : 요청에 대한 상세설정을 할때, header, 요청내용 설정</li>
        <li>$.get("",(data)=>{}) : 기본 get방식요청 처리시 사용 (간편하게 사용가능 // 주소,함수)</li>
        <li>$.post("",{쿼리스트링값},(data)=>{}) : 기본 post방식요청 처리시 사용 (간편하게 사용가능)</li>
    </ol>
    <h2>$.ajax() 함수 활용하기</h2>
    <p>
        매개변수로 요청에 대한 설정을 한 객체를 전달한다. <br>
        매개변수 객체의 key값은 $.ajax()함수에서 정해져있다. <br>
        url : 요청주소를 설정 (String) <br>
        [type : 요청방식(get,post) (String) default=get방식] <br>
        [data : 서버에 요청시 전송할 데이터 (Object({key:value...}))] <br>
        [dataType : 응답데이터 타입에 대한 설정 (String{json,html,text...})] <br>
        success : 응답이 완료되고 성공시 실행되는 callback함수 (=status 200일때 실행) (data)=>{} <br>
        [error : 응답이 완료되고 에러발생시 실행되는 callback함수 (=status 200이 아닐때 실행) ([e],r,m)=>{}] <br>
        [complete : 응답이 성공,실패에 관계없이 무조건 실행되는 함수 ()=>{}] <br>
    </p>

    <button id="btn">기본 $.ajax이용하기</button>
    <button id="btnGet">기본 $.get이용하기</button>
    <button id="btnPost">기본 $.post이용하기</button>
    <div id="container"></div>

    <script>

        $("#btnGet").click(e=>{
            $.get("<%=request.getContextPath()%>/jquery/ajax.do?name=최주영&age=27"
            	//callback함수 : 화살표함수는 success와 동일한 역할을 하는 callback함수이다.
                ,data=>{
                    console.log(data); //서블릿에서 보낸 값들은 한번에 모여 data로 이동한다.
                    $("<h4>").text(data).css("color","lime").appendTo($("#container"));
                });
        })
        $("#btnPost").click(e=>{
            $.post("<%=request.getContextPath()%>/jquery/ajax.do"
                ,{name:"김재훈",age:29} //post를 위한 쿼리스트링 값
                ,data=>{
                    $("<h1>").text(data).css("color","cornfliwerblue").appendTo($("#container"));
                });
        })
        $("#btn").click(e=>{
            $.ajax({
                url:"<%=request.getContextPath()%>/jquery/ajax.do",
                // type:"get",
                type:"post",
                data:{name:"유병승",age:19},
                success:(data)=>{
                	//responseText속성에 저장된 값을 data에 대입한다.
                    /* console.log(data); */
                    $("<h3>").text(data).css("color","magenta").appendTo($("#container"));
                
                },error:(r,m)=>{ //왜 2개 받는지 ? : r(request) = 요청정보 , m(message) = 메세지
                    if(r.status==404) alert("요청한 페이지가 없습니다.");
                    console.log(r);
                    console.log(m);
                },
                complete:()=>{
                	alert("서버와 통신 끝");
                }
            });
        });
    </script>

    <h2>서버에 저장되어있는 문자파일 가져오기</h2>
    <button id="btnFile">test.txt</button>
    <div id="result2"></div>
    <script>
        $("#btnFile").click(e=>{
        	// ajax방식으로 문자파일 가져오기
            // $.ajax({
            //     url:"<%=request.getContextPath()%>/test/test.txt",
            //     dataType:"text",
            //     success:data=>{
            //         const arr=data.split("\n"); //split() : 문자열을 배열로 반환하는 함수
            //         arr.forEach(e=>{
            //             $("#result2").append($("<p>").text(e));
            //         });
            //         const person = arr[arr.length-1]; //arr의 마지막배열값이 사람의 개인정보를 담고 있음
            //         const persons=person.split("\\n"); // "\\n"의 의미 : 하나를 더 사용함으로서 문자열이었던 \n을 개행의 의미로 바꾼다.
            //         const table=$("<table>");
            //         persons.forEach(e=>{ //{"유병승정보","최주영정보"}
            //             const tr=$("<tr>");
            //             const p=e.split(","); //{이름,나이,성별...}
            //             p.forEach(d=>{
            //                 tr.append($("<td>").text(d).css("border","1px solid black")); //td에 각 정보를 대입
            //             });
            //             table.append(tr);
            //         });
            //         $("#result2").append(table);
            //     }
            // });
            // get방식으로 문자파일 가져오기(요청방식이 같다.)
            $.get("<%=request.getContextPath()%>/test/test.txt",
                data=>{
                    const arr=data.split("\n");
                    arr.forEach(e=>{
                        $("#result2").append($("<p>").text(e));
                    });
                    const person = arr[arr.length-1];
                    const persons=person.split("\\n");
                    const table=$("<table>");
                    persons.forEach(e=>{
                        const tr=$("<tr>");
                        const p=e.split(",");
                        p.forEach(d=>{
                            tr.append($("<td>").text(d).css("border","1px solid black"));
                        });
                        table.append(tr);
                    });
                    $("#result2").append(table);
                });
        });
    </script>

    <h2>서버에서 전송하는 csv방식의 데이터처리하기</h2>
    <p>
        문자열을 데이터별로 구분할 수 있게 만든 것 <br>
        , \n ,$등으로 구분할 수 있는 문자열 <br>
        ex: 유병승,19,남,경기도시흥$최솔,29,여,경기도안양시$ <br>
    </p>
    <button id="btncsv">csv데이터 가져오기</button>
    <div id="csvcontainer"></div>
    <script>
        $("#btncsv").click(e=>{
            $.ajax({
                url:"<%=request.getContextPath()%>/ajax/csvdata.do",
                dataType:"text",
                success:data=>{
                    console.log(data);
                    const actors=data.split("\n");
                    console.log(actors);
                    const table=$("<table>");
                    //"header로 미리 코드를 생성하고 거기에 값을 넣는 방식" 이아니라 테이블에 데이터를 표시하기위한 용도로 사용된것이다.
                    const header="<tr><th>이름</th><th>전화번호</th><th>프로필</th></tr>";
                    table.html(header);
                    actors.forEach(e=>{
                        const tr=$("<tr>");
                        const actor=e.split(","); //배우의 전체정보
                        const name=$("<td>").text(actor[0]);
                        const phone=$("<td>").text(actor[1]);
                        const profile=$("<td>").append($("<img>").attr({
                            "src":"<%=request.getContextPath()%>/images/"+actor[2],
                            "width":100,
                            "height":100
                        }));
                        tr.append(name).append(phone).append(profile);
                        table.append(tr);
                    });
                    $("#csvcontainer").html(table);
                },
            });
        });
        
    </script>


    <h2>xml파일을 가지고 처리하기</h2>
    <button id="xmlbtn">xml파일 가져오기</button>
    <div id="xmlcontainer"></div>
    <script>
        $("#xmlbtn").click(e=>{
            $.get("<%=request.getContextPath()%>/test/books.xml",
                function(data){
            		console.log(data);
                    const root=$(data).find(":root"); //xml의 자식태그의 최상위로 접근 (books보다 상위에 있다.)
                    const books=root.children(); //말그대로 books태그를 선택
                    const table=$("<table>");
                    const header="<tr><th>구분</th><th>제목</th><th>작가</th></tr>";
                    table.html(header);
                    books.each(function(i,e){ //왜 매개변수가 2개인지 : i=index , e=event ==============================================
                        const tr=$("<tr>");
                        const subject=$("<td>").text($(e).find("submit").text());
                        const title=$("<td>").text($(e).find("title").text());
                        const writer=$("<td>").text($(e).find("write").text());
                        tr.append(subject).append(title).append(writer);
                        table.append(tr);
                    });
                    $("#xmlcontainer").html(table);
                }
            );
        })
    </script>


    <h2>html페이지를 받아서 처리하기</h2>
    <!-- 평소처럼 jsp->servlet->jsp로 구성되는 로직을 구현할 수 있다. -->
    <!-- url로 보내면 해당 서블렛에서 보낼 데이터를 출력용jsp에 보내고 jsp에선 데이터를 가공하여 이곳에서 html형식의 data로 활용된다. -->
    <button id="btnhtml">html페이지 받아오기</button>
    <div id="htmlcontainer"></div>
    <script>
        $("#btnhtml").click(e=>{
            $.ajax({
                url:"<%=request.getContextPath()%>/ajax/htmlTest.do",
                dataType:"html",
                success:function(data){
                    console.log(data);
                    $("#htmlcontainer").html(data);
                }
            })
        })
    </script>


    <h2>서버(DB)에서 보내준 데이터 활용하기</h2>
    <input type="search" id="userId" list="data">
    <button id="searchMember">아이디검색</button>
    <datalist id="data"></datalist>
    <div id="memberList"></div>

    <script>
    	/* 검색창에 아이디를 검색하면 유사 아이디를 추천검색창에 띄우는 로직 */
        $("#userId").keyup(e=>{
            $.get("<%=request.getContextPath()%>/searchId.do?id="+$(e.target).val(),
                function(data){
                    $("#data").html(''); //빈공간을 만드는 이유 : ==================================================================
                    const userIds=data.split(",");
                   	userIds.forEach(e=>{
                       const option=$("<option>").attr("value",e).text(e);
                       $("#data").append(option);
                    });
                }
            );
        });
        
        /* html파일로 회원 조회 -> 회원정보를 받아와 jquery로 테이블 만들기 */
        $("#searchMember").click(e=>{
        	$.ajax({
                url:"<%=request.getContextPath()%>/memberView.do",
                dataType:"html", //로직을 바꾸면서 html에서 텍스트로 값이 바뀌었지만 jquery에서 자동으로 바꿔주기 때문에 크게영향을 끼치진않는다.
                success:function(data){
                    // html파일로 회원 조회
                    /* $("#memberList").html(data); */
                    
                    // query로 테이블 만들기(헤더편)
                    const members=data.split("\n");
                    const table=$("<table>");
                    const header=$("<tr>");
                    const headerData=["아이디","이름","나이","성별","이메일","전화번호","주소","취미","가입일"];
                    headerData.forEach(e=>{
                        const th=$("<th>").text(e);
                        header.append(th);
                    });
                    table.append(header);

                 	// query로 테이블 만들기(회원편)
                    members.forEach(e=>{
                    	const member=e.split("$");
                    	const tr=$("<tr>");
                        member.forEach(m=>{
                            tr.append($("<td>").text(m));
                        });
                        table.append(tr);
                    });
                    $("#memberList").html(table);
                }
            })
        });
    </script>


</body>

</html>