package com.jsp.model.dto;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //setter,getter기본생성자,toString,equals,hashcode 구현가능(outline 에서 확인가능)
@AllArgsConstructor //매개변수있는 생성자(전체필드에 대해)
@NoArgsConstructor //기본생성자
@Builder //필터패턴을 생성
//@Getter
//@Setter
//@ToString(exclude = {"memberPwd"}) //해당필드값만 제외하고 생성
//@EqualsAndHashCode
//@RequiredArgsConstructor //not null설정, final설정된 필드를 매개변수하는 생성자 생성
public class MemberDto {
//	@Getter //어노테이션 아래의 필드값만 getter,setter생성가능
//	@Getter@Setter //한줄표현가능
	private String memberId;
//	@NonNull //null허용금지 설정
	private String memberPwd;
	private String memberName;
	private int age;
	private String gender;
	private String email;
	private String phone;
	private String address;
	private String hobby;
	private Date enrollDate;
//	private int no; 추가하면 자동생성
	
	//lombok라이브러리 활용하기
	//1. lombok.jar파일 다운로드
	//2. lombok 설정 -> IDE도구 연동하기
	//3. lombok이 제공하는 어노테이션을 이용해서 활용하기
	
	//다운로드 : mvnrepository.com -> lombok검색후 jar다운 -> WEB-INF\lombok.jar 붙여넣기
	
}
