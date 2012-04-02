package pgu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pgu.domain.Person;

/**
 * @see http://stackoverflow.com/tags/servlets/info
 */
@SuppressWarnings("serial")
public class ServletWithJsp extends HttpServlet {

    @Override
    protected void doGet(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException,
            IOException {
        System.out.println("..get");

        final Person person = new Person().id("1").name("John").age(30);

        req.setAttribute("person", person);

        final RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jsp/AJsp.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException,
            IOException {
        System.out.println("..post");
    }

}
