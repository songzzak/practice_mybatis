package com.mybatis.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.service.StudentService;

@WebServlet("/student/selectStudentMap")
public class SelectStudentMapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectStudentMapServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no=Integer.parseInt(request.getParameter("no"));
		
		Map data=new StudentService().selectStudentMap(no);
		//System.out.println(data);
		request.setAttribute("s", data);
		request.getRequestDispatcher("/views/student.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
