package com.example.projetentreprise.web;

import com.example.projetentreprise.beans.Admin;
import com.example.projetentreprise.dao.AdminDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    private AdminDao admin;

    public LoginServlet(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mp = request.getParameter("num");


        //créé instance du modèle
        Admin admin = new Admin();
        admin.setMp(mp);

        if (AdminDao.login(mp)) {
            //stocke resultat dans la session
            HttpSession session = request.getSession(true);
            session.setAttribute("model", admin);
            //redirection vers la vue
            request.getRequestDispatcher("Admin.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "Vous n'avez pas l'accès.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    public void init() throws ServletException {
        admin = new AdminDao();

    }
}
