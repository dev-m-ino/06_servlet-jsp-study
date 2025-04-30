package com.ino.servlet.section05.redirect;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/board/regist")
public class BoardRegistServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        req.getParameter("title");
        req.getParameter("content");
        // 문제점1. 포워딩을 통해 해당 페이지가 띄워지나, url은 여전히 /servlet/board/regist 보여짐
        // 문제점2. 갱신 데이터 조회 과정x
        // 해결 방법 게시글 데이터를 db부터 조회하여 boardList.html로 포워딩해주는 Servlet이 기 존재(BoardListServlet)
        // 해당 Servlet 재호출
        resp.sendRedirect("/servlet/list.bo");
    }
}