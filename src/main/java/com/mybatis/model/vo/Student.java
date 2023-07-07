package com.mybatis.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Builder
@Data
@NoArgsConstructor
public class Student {
	private int studentNo;
	private String studentName;
	private String studentTel;
	private String studentEmail;
	private String studentAddr;
	private Date reg_date;
}
/*
 * student_no number primary key, student_name varchar2(30) not null,
 * student_tel char(11) not null, student_email varchar2(50), student_addr
 * varchar2(256),
 */