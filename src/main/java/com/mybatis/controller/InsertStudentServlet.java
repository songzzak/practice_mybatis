package com.mybatis.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.service.StudentService;

/**
 * Servlet implementation class InsertStudentServlet
 */
@WebServlet("/InsertStudent.do")
public class InsertStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertStudentServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result= new StudentService().insertStudent();
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(result);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
