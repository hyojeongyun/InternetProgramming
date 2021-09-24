package com.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	private UserDao dao;
	
    public UserController() {
        super();
        dao = new UserDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html;charset=UTF-8");
    	String forward="";
        String action = request.getParameter("action");
        
        if (action.equalsIgnoreCase("delete")){
            String userId = request.getParameter("userId");
            dao.AdminDelUser(userId);
            forward = "/listUser.jsp";
            request.setAttribute("users", dao.getUsers());   
            
        } else if (action.equalsIgnoreCase("edit")){
            forward = "/editUser.jsp";
            String userId = request.getParameter("userId");
            User user = dao.getUserById(userId);
            request.setAttribute("user", user);
        } else {
            forward = "/editUser.jsp";
        }

        RequestDispatcher view = request.getRequestDispatcher(forward); 
        view.forward(request, response);
    	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
