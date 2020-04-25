/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mid_ex_2;


import com.mycompany.mid_ex_2.Store;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/**
 *
 * @author phulelouch
 */
@WebServlet(name = "extend", urlPatterns = {"/extend"})
public class extend extends HttpServlet {
int count=0;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet extend</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet extend at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, UnsupportedEncodingException {
        
            response.setContentType("text/html");    
            PrintWriter out = response.getWriter();
           
               
            
                String name = request.getParameter("name");
                String uname = request.getParameter("username");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String pass = request.getParameter("password");
                String gender = request.getParameter("rd");
                String birthday = request.getParameter("birthday");
                int radio = -1;
                    try {
                        radio = Integer.parseInt(request.getParameter("rd"));
                    } catch (Exception e) {

                    }
                    switch (radio) {
                    case 0:
                        gender = "Male";

                    case 1:
                        gender = "Female";

                    }

               
              String docType =       "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +       "Transitional//EN\">\n";    
              out.println(docType + "<html>\n" +
"    <head>\n" +
"       <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\" />\n" +
"        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"        <title>Your Profile</title>\n" +
"    </head>\n" +
"    <body> \n" +
"       <div id=\"container\">\n" +
"            <div id=\"header\">\n" +
"       \n" +
"        <table border=\"0.1\">\n" +
"            <thead>\n" +
"                <tr>\n" +
"                        <th></th>\n" +
"                        <th>USER PROFILE SEVLET AND HTML</th>\n" +
"                    </tr>\n" +
"            </thead>\n" +
"            <tbody>\n" +
"                <tr>\n" +
"                     <td>ID: </td>\n" +
"                    <td>"+ uname +"</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                     <td>Name: </td>\n" +
"                    <td>"+  name+"</td>\n" +
"                </tr>                \n" +
"                <tr>\n" +
"                     <td>Email: </td>\n" +
"                    <td>"+ email+"</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                     <td>Phone: </td>\n" +
"                    <td>"+  phone+"</td>\n" +
"                </tr>  \n" +
"                <tr>\n" +
"                     <td>Gender: </td>\n" +
"                    <td>"+  gender+"</td>\n" +
"                </tr>\n" +
"                <tr>\n" +
"                     <td>Birthday: </td>\n" +
"                    <td>"+  birthday+"</td>\n" +
"                </tr>\n" +
"            </tbody>\n" +
"        </table>\n" +
"        <form name=\"Return to main page\" action=\"index.jsp\" method=\"POST\">\n" +
"            <input type=\"submit\" value=\"Return to main page\">\n" +
"        </form>\n" +
"            </div></div>\n" +
"    </body>\n" +
"</html>");  
                   
             
                    
                
    }
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    

   

}
