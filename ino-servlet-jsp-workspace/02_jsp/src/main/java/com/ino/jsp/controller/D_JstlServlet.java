package com.ino.jsp.controller;

import com.ino.jsp.dto.PersonDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jstl")
public class D_JstlServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] colorArr = {"red", "green", "blue", "yellow", "purple", "orange", "pink", "black", "white", "gray"};
        PersonDto[] personArr = {
                new PersonDto("김철수", 25, "남"),
                new PersonDto("이영희", 22, "여"),
                new PersonDto("박지성", 31, "남"),
                new PersonDto("최유나", 28, "여"),
                new PersonDto("정민준", 29, "남"),
                new PersonDto("강수현", 24, "여"),
                new PersonDto("조현우", 33, "남"),
                new PersonDto("배주현", 27, "여"),
                new PersonDto("신동엽", 45, "남"),
                new PersonDto("유재석", 48, "남")
        };
        String device = "컴퓨터,핸드폰,Tv.에어컨/냉장고.세탁기";

        req.setAttribute("colors", colorArr);
        req.setAttribute("list", personArr);
        req.setAttribute("device", device);
        req.getRequestDispatcher("/section04/jstl.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}