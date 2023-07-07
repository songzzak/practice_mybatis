package com.mybatis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.service.StudentService;
import com.mybatis.model.vo.Student;


@WebServlet("/student/selectStudentAll.do")
public class SelectStudentAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SelectStudentAllServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Student> students=new StudentService().selectStudentAll();
		//students.stream().forEach(System.out::println);
		request.setAttribute("students", students);
		request.getRequestDispatcher("/views/student.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
