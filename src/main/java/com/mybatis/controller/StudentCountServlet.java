package com.mybatis.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.service.StudentService;


@WebServlet("/student/studentCount.do")
public class StudentCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public StudentCountServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int count=new StudentService().selectStudentCount();
		System.out.println(count);
		request.setAttribute("count", count);
		
		request.getRequestDispatcher("/views/student.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
