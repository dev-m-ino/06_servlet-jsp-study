package com.ino.jsp.controller;

import com.ino.jsp.dto.BookDto;
import com.ino.jsp.dto.PersonDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/tag-element")
public class A_TagElementServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // request
        int no = Integer.parseInt(req.getParameter("no"));
        BookDto bk = new BookDto(1, "JSPMaster", "KIM"); // 넘어온 번호로 조회된 도서


        List<PersonDto> list = List.of(
                new PersonDto("asv", 20, "f")
        , new PersonDto("하이하이", 20, "m")
        , new PersonDto("안녕하세요", 20, "f")
        );
        // response page => JSP 위임(RequestDispatcher)
        RequestDispatcher rd = req.getRequestDispatcher("/section01/tagElement.jsp");
        req.setAttribute("book", bk);
        // session 객체는 Servlet단 선언x => HttpSession 객체 얻기
        HttpSession session = req.getSession();
        session.setAttribute("list", list);

        ServletContext application = req.getServletContext();
        application.setAttribute("academy", "SSG I&C");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}