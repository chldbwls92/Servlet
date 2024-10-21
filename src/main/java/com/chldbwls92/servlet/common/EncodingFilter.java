package com.chldbwls92.servlet.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


//web 서블릿처럼 해주는 어노테이션이 있음
// 해당 필터가 거쳐갈 서블릿에 대한 path 범위
@WebFilter("/servlet/*") // 서블릿으로 시작하는 거만 이게 동작한다~   /*은 모든 필터!   * = 전체!
public class EncodingFilter implements Filter {
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		chain.doFilter(request, response);
		
	}

}
