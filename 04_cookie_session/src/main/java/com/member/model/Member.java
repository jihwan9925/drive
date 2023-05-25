package com.member.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

public class Member implements Serializable{
	
	private static final long serialVersionUID = -2782791024678061187L;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String gender;
	private int age;
	private String email;
	private String address;
	private String phone;
	private String hobby;
	private Date enrollDate;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String memberId, String memberPwd, String memberName, String gender, int age, String email,
			String address, String phone, String hobby, Date enrollDate) {
		super();
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.gender = gender;
		this.age = age;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.hobby = hobby;
		this.enrollDate = enrollDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberPwd=" + memberPwd + ", memberName=" + memberName + ", gender="
				+ gender + ", age=" + age + ", email=" + email + ", address=" + address + ", phone=" + phone
				+ ", hobby=" + hobby + ", enrollDate=" + enrollDate + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(address, age, email, enrollDate, gender, hobby, memberId, memberName, memberPwd, phone);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Member other = (Member) obj;
		return Objects.equals(address, other.address) && age == other.age && Objects.equals(email, other.email)
				&& Objects.equals(enrollDate, other.enrollDate) && Objects.equals(gender, other.gender)
				&& Objects.equals(hobby, other.hobby) && Objects.equals(memberId, other.memberId)
				&& Objects.equals(memberName, other.memberName) && Objects.equals(memberPwd, other.memberPwd)
				&& Objects.equals(phone, other.phone);
	}
	
	
	
}
