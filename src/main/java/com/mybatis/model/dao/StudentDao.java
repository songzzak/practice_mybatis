package com.mybatis.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.vo.Student;

public class StudentDao {

	public int insertStudent(SqlSession session) {
		//sql문을 실행할 때 session이 제공하는 메소드를 호출해서 사용
		//selectOne() selectList() insert() update() delete()
		//statement인수는 "mapper태그의 namespace값.sql태그id값"
		int result=session.insert("student.insertStudent");
		
		return result;
	}

	public int insertStudentByName(SqlSession session, String name) {
		int result=session.insert("student.insertStudentByName", name);
		return result;
	}

	public int insertStudentAll(SqlSession session, Student s) {
	 return session.insert("student.insertStudentAll", s);
	}

	public int updateStudent(SqlSession session, Student s) {
		return session.update("student.updateStudent", s);
	}

	public int deleteStudent(SqlSession session, int no) {
		return session.delete("student.deleteStudent",no);
	}

	public int selectStudentCount(SqlSession session) {
		int result=session.selectOne("student.selectStudentCount");
		return result;
	}

	public Student selectStudent(SqlSession session, int no) {
		return session.selectOne("student.selectStudent", no);
	}

	public List<Student> selectStudentAll(SqlSession session) {
		return session.selectList("student.selectStudentAll");
	}

	public List<Student> selectStudentByName(SqlSession session, String name) {
		return session.selectList("student.selectStudentByName",name);
	}

	public Map selectStudentMap(SqlSession session, int no) {
		return session.selectOne("student.selectStudentMap", no);
	}

	public List<Map> selectStudentListMap(SqlSession session) {
		return session.selectList("student.selectStudentListMap");
	}

	public List<Student> selectStudentPage(SqlSession session, int cPage, int numPerPage) {
		//페이지처리할때 마이바티스가 제공하는 페이징처리 클래스를 이용
		//RowBounds클래스
		//selectList호출시 세번째 매개변수에 RowBounds클래스를 생성해서 전달해주면 된다
		//매개변수 있는 생성자를 이용
		//매개변수 1 offset : 시작 row번호
		//매개변수 2 limit : 범위
		return session.selectList("student.selectStudentPage", null, new RowBounds((cPage-1)*numPerPage, numPerPage));
	}

}
