package com.niit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("pwd");
		LoginDAO obj = new LoginDAO();
		RequestDispatcher dispatcher;
		
		if(obj.isValidUser(uname,pass)==true)
		{
			dispatcher = request.getRequestDispatcher("Home.html");
		    dispatcher.forward(request,response);
		    
		
		}
		
		
		else
			
		{
			PrintWriter writer = response.getWriter();
			writer.println("plz enter valid name");
			dispatcher = request.getRequestDispatcher("Login.hmtl");
			dispatcher.include(request,response);
		}
		
		// TODO Auto-generated method stub
	}

}
