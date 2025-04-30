package com.ino.jsp.controller;

import com.ino.jsp.dto.BookDto;
import com.ino.jsp.dto.PersonDto;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/el")
public class C_ElServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // requset Scope에 Attribute 담기
        req.setAttribute("classRoom", "2강의장");
        req.setAttribute("student", new PersonDto("ino",20, "f"));

        // session Scope Attribute 담기
        HttpSession session = req.getSession();
        session.setAttribute("teacher", new PersonDto("kbr", 36, "f"));

        // application Scope Attribute
        ServletContext application = req.getServletContext();
        application.setAttribute("acad", "SSG-7");

        // req, session, application 동일 데이터 담기
        req.setAttribute("scope", "request에 담긴 데이터");
        session.setAttribute("scope", "session 담긴 데이터");
        application.setAttribute("scope", "application 담긴 데이터");

        // 연산자 테스트 위한 값
        req.setAttribute("big", 10);
        req.setAttribute("small", 3);
        req.setAttribute("str1", "hi");
        req.setAttribute("str2", "hi");
        req.setAttribute("str3", "bye");

        req.setAttribute("book1", new BookDto(1, "book", "author"));
        req.setAttribute("book2", null);

        List<PersonDto> list1 = List.of(
                new PersonDto("asv", 20, "f")
                , new PersonDto("하이하이", 20, "m")
                , new PersonDto("안녕하세요", 20, "f")
        );
        req.setAttribute("list1", list1);
        List<PersonDto> list2 = new ArrayList<>(); // empty list
        req.setAttribute("list2", list2);

        req.getRequestDispatcher("/section03/el.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}