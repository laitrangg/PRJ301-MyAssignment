/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.student;

import controller.auth.BaseRoleController;
import dal.SessionDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;
import model.Session;

/**
 *
 * @author My PC
 */
public class AttendanceStudentController extends BaseRoleController {

    protected void processRequest(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        String stdid = req.getParameter("stdid");
        int gid = Integer.parseInt(req.getParameter("gid"));
        SessionDBContext sdb = new SessionDBContext();
        ArrayList<Session> ses = sdb.getAttStatus(stdid, gid);
        req.setAttribute("sessions", ses);
        req.getRequestDispatcher("../view/student/attendance.jsp").forward(req, resp);
    }

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

    public static void main(String[] args) {
        SessionDBContext sdb = new SessionDBContext();
        ArrayList<Session> ses = sdb.getAttStatus("HE161629", 1);
        for (Session s : ses) {
            System.out.println(s);
        }
    }
}
