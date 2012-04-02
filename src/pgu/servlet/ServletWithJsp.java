package pgu.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pgu.domain.Person;
import pgu.domain.Product;

/**
 * @see http://stackoverflow.com/tags/servlets/info
 * @see http://stackoverflow.com/tags/jstl/info
 */
@SuppressWarnings("serial")
public class ServletWithJsp extends HttpServlet {

    @Override
    protected void doGet(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException,
            IOException {
        System.out.println("..get");

        final Person person = new Person().id("1").name("John").age(30);

        final List<Product> products = new ArrayList<Product>();
        products.add(new Product().id("1").reference("AAAAA"));
        products.add(new Product().id("2").reference("AAAAB"));
        products.add(new Product().id("3").reference("AAAAC"));

        req.setAttribute("person", person);
        req.setAttribute("products", products);

        final RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jsp/AJsp.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException,
            IOException {
        System.out.println("..post");
    }

}
