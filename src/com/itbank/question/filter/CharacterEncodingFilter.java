package com.itbank.question.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request
			, ServletResponse response
			, FilterChain chain)
			throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");//UTF-8로 보내겠다
		response.setContentType("text/html; charset=UTF-8");//너는 UTF-8로 읽어라
		request.setCharacterEncoding("UTF-8");//나도 UTF-8로 읽겠다
		chain.doFilter(request, response);  // 필터적용 후 계속 진행해라
	}

	@Override
	public void destroy() {
		System.out.println("필터 파괴");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("필터 실행");
	}

}
