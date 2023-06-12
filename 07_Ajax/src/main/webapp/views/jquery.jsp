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
        <li>$.get("",(data)=>{}) : 기본 get방식요청 처리시 사용 (간편하게 사용가능)</li>
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
        [error : 응답이 완료되고 에러발생시 실행되는 callback함수 (=status 200이 아닐때 실행) (e,r,m)=>{}] <br>
        [complete : 응답이 성공,실패에 관계없이 무조건 실행되는 함수 ()=>{}] <br>
    </p>

    <button id="btn">기본 $.ajax이용하기</button>
    <button id="btnGet">기본 $.get이용하기</button>
    <button id="btnPost">기본 $.post이용하기</button>
    <div id="container"></div>

    <script>

        $("#btnGet").click(e=>{
            $.get("<%=request.getContextPath()%>/jquery/ajax.do?name=최주영&age=27"
            	//callback함수 : 화살표함수는 success와 동일한 역할을 하는 callback함수이다.=====================================
                ,data=>{
                    console.log(data);
                    $("<h4>").text(data).css("color","lime").appendTo($("#container"));
                });
        })
        $("#btnPost").click(e=>{
            $.post("<%=request.getContextPath()%>/jquery/ajax.do"
                ,{name:"김재훈",age:29}
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
                
                },error:(r,m)=>{
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
            // $.ajax({
            //     url:"<%=request.getContextPath()%>/test/test.txt",
            //     dataType:"text",
            //     success:data=>{
            //         console.log(data);
            //         const arr=data.split("\n");
            //         console.log(arr);
            //         arr.forEach(e=>{
            //             $("#result2").append($("<p>").text(e));
            //         });
            //         const person = arr[arr.length-1];
            //         console.log(person);
            //         const persons=person.split("\\n");
            //         console.log(persons);
            //         const table=$("<table>");
            //         persons.forEach(e=>{
            //             const tr=$("<tr>");
            //             const p=e.split(",");
            //             p.forEach(d=>{
            //                 tr.append($("<td>").text(d).css("border","1px solid black"));
            //             });
            //             table.append(tr);
            //         });
            //         $("#result2").append(table);
            //     }
            // });
            //get방식으로 문자파일 가져오기(요청방식이 같다.)
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
                    const header="<tr><th>이름</th><th>전화번호</th><th>프로필</th></tr>";
                    table.html(header);
                    actors.forEach(e=>{
                        const tr=$("<tr>");
                        const actor=e.split(",");
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






</body>

</html>