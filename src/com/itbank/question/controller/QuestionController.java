package com.itbank.question.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.question.DAO.QuestionDAO;

@WebServlet("/question")
public class QuestionController extends HttpServlet {

	private String name;
	private String phonenum;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getParameter("resultPage") != null) {
			int resultPage = Integer.parseInt(req.getParameter("resultPage"));
			if (resultPage == 1) {
				doPost(req, resp);
			}
		} else {
			name = req.getParameter("name");
			phonenum = req.getParameter("phonenum");
			int phonenumCheck = QuestionDAO.getInstance().selectphonenumCheck(phonenum);
			if (phonenumCheck == 0) {
				String view = "WEB-INF/views/question.jsp";
				req.getRequestDispatcher(view).forward(req, resp);
			} else {
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('이미 설문조사가 완료되었습니다')");
				out.println("history.go(-1)</script>");
			}
		}
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getParameter("resultPage") == null) {
			int q1 = Integer.parseInt(req.getParameter("q1"));
			int q2 = Integer.parseInt(req.getParameter("q2"));
			int q3 = Integer.parseInt(req.getParameter("q3"));
			int q4 = Integer.parseInt(req.getParameter("q4"));
			int q5 = Integer.parseInt(req.getParameter("q5"));
			int q6 = Integer.parseInt(req.getParameter("q6"));
			String q7 = req.getParameter("q7");
			QuestionDAO.getInstance().insertQuestion(name, phonenum, q1, q2, q3, q4, q5, q6, q7);
		}
		int[][] array = QuestionDAO.getInstance().selectQuestionSum();
		ArrayList<String> q7List = QuestionDAO.getInstance().selectQuestion7Answer();
		double[][] graphArray = new double[6][5];
		for (int i = 0; i < 6; i++) {
			for (int j = 0; j < 5; j++) {
				graphArray[i][j] = Math.round(((double) array[i][j] / (double) array[i][5] * 100) * 100) / 100.0;
			}
		}
		req.setAttribute("array", array);
		req.setAttribute("graphArray", graphArray);
		req.setAttribute("q7List", q7List);
		String view = "WEB-INF/views/result.jsp";
		req.getRequestDispatcher(view).forward(req, resp);
	}
}
