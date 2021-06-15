package com.lab3;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HitCountServlet", value = "/HitCountServlet")
public class HitCountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    public void init() throws ServletException {
        super.init();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        Integer times = (Integer)context.getAttribute("times");
        if(times == null) {
            times = new Integer(1);
        }else {
            times = new Integer(times.intValue() + 1);
        }
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<center><h1>Total Number of Hits</h1></center>");
        out.println("<center><h1>"+times+"</h1></center>");
        context.setAttribute("times", times);
    }
}
