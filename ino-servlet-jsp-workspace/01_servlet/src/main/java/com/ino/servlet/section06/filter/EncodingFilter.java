package com.ino.servlet.section06.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

@WebFilter("/board/*")
public class EncodingFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("=========Encoding Filter 동작 =========");

        if ("post".equals(((HttpServletRequest)servletRequest).getMethod())) {
            System.out.println("encoding ==> post method");
            servletRequest.setCharacterEncoding("UTF-8");
        }
        filterChain.doFilter(servletRequest, servletResponse); // 다음 필터 및 Servlet 실행
    }
}
