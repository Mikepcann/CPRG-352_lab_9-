
package servlets;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.*;
import services.*;


public class userServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        UserService ns = new UserService();
        RoleService rs = new RoleService();
        
          try {      
              
              List<Role> roles = rs.getAll();
            request.setAttribute("roleLabel", roles);
            
            
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
        
        HttpSession session = request.getSession();
        
        String action = request.getParameter("action");
        
        String toDelete = request.getParameter("toDelete");
        String toUpdate = request.getParameter("toEdit");
        
        String email = request.getParameter("email");
        boolean active = true;
        String first_name = request.getParameter("firstName");
        String last_name = request.getParameter("lastName");
        String password = request.getParameter("password");
        int role = 0;
        


        UserService us = new UserService();
        RoleService rs = new RoleService();
        
        
        try {
            switch (action) {
                case "add":
                    role = Integer.parseInt(request.getParameter("roleSelect"));
                    System.out.println("in case add");
                    us.insert(email, active, first_name, last_name, password, role);
                    System.out.println("added new user");
                    break;
                case "delete":
                    us.delete(toDelete);
                    break;
                case "edit":
                    User toUpdateUser = us.get(toUpdate);
                    System.out.println(toUpdate + "*************************************** ");
                    request.setAttribute("updatedEmail", toUpdateUser.getEmail());
                    request.setAttribute("updatedFirstName", toUpdateUser.getFirstName());
                    request.setAttribute("updatedLastName", toUpdateUser.getLastName());
                    request.setAttribute("updatedPassword", toUpdateUser.getPassword());
                    request.setAttribute("updatedRole", toUpdateUser.getRole().getRoleId());
                    break;
                case "save":
                    email = request.getParameter("updatedEmail");
                    first_name = request.getParameter("updatedFirstName");
                    last_name = request.getParameter("updatedLastName");
                    password = request.getParameter("updatedPassword");
                    role = Integer.parseInt(request.getParameter("updatedRole"));
                    User updatedUser = new User(email, active, first_name, last_name, password, role);
                    us.update(updatedUser);
                    System.out.println("we updated the details!");
                    break;
                default: 
                    getServletContext().getRequestDispatcher("/WEB-INF/Users.jsp").forward(request, response);

            }
        } catch (Exception ex) {
            Logger.getLogger(userServlet.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("message", "error");
        }
        
        try {           
            List<User> users = us.getAll();
            request.setAttribute("users", users);
            System.out.println(users);
            List<Role> roles = rs.getAll();
            request.setAttribute("roleLabel", roles);
        } catch (Exception ex) {
            System.out.println("Error loading Users");
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/Users.jsp").forward(request, response);
        return;
    }

}
