package pl.coderslab.workshop3.controller;

import pl.coderslab.workshop3.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

@WebServlet("/groups")
public class GroupsController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("groups", getGroups());
        getServletContext().getRequestDispatcher("/WEB-INF/views/groups.jsp").forward(request, response);
    }

    private List<Group> getGroups() {
        try {
            return Group.findAll();
        } catch (SQLException e) {
            return Collections.emptyList();
        }
    }
}
