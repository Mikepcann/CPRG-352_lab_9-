
package servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;
import services.UserService;


public class userServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        UserService ns = new UserService();

        try {
            List<User> users = ns.getAll();
            request.setAttribute("users", users);
            System.out.println(users);
        } catch (Exception ex) {
            System.out.println("Error loading Users");
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/Users.jsp").forward(request, response);
        return;
    }

      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
