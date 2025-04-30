package com.ino.servlet.section06.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

public class LifeCycleFilter implements Filter {

    public LifeCycleFilter(){
        System.out.println("================LifeCycle Constructor =========================");
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("================LifeCycle init() =========================");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("================LifeCycle filter Before Servlet=========================");
        filterChain.doFilter(servletRequest, servletResponse);
        System.out.println("================LifeCycle filter After Servlet=========================");
    }

    @Override
    public void destroy() {
        System.out.println("================LifeCycle destroy =========================");
    }
}
