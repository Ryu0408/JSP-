package com.itbank.question.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		try {
			String driver = getInitParameter("jdbcdriver");
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}	
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String view = "WEB-INF/views/main.jsp";
		req.getRequestDispatcher(view).forward(req, resp);
	}
}