/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import controller.auth.BaseRoleController;
import dal.SessionDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.Attendance;
import model.Session;
import model.Student;

/**
 *
 * @author My PC
 */
public class TakeAttendController extends BaseRoleController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        Session ses = new Session();
        ses.setId(Integer.parseInt(req.getParameter("sesid")));
        String[] stdids = req.getParameterValues("stdid");
        for (String stdid : stdids) {
            Attendance a = new Attendance();
            Student s = new Student();
            a.setStudent(s);
            a.setDescription(req.getParameter("description" + stdid));
            a.setPresent(req.getParameter("present" + stdid).equals("present"));
            s.setId(stdid);
            ses.getAttendances().add(a);
        }
        SessionDBContext db = new SessionDBContext();
        db.update(ses);
        resp.sendRedirect("takeatt?id=" + ses.getId());
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        int sesid = Integer.parseInt(req.getParameter("id"));
        SessionDBContext sesDB = new SessionDBContext();
        Session ses = sesDB.get(sesid);
        req.setAttribute("ses", ses);
        req.getRequestDispatcher("../view/lecturer/takeattend.jsp").forward(req, resp);
    }
}


