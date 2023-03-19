/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import controller.auth.BaseRoleController;
import dal.GroupDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.Group;

/**
 *
 * @author My PC
 */
public class StatusAtttendController extends BaseRoleController {

    protected void processRequest(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        int groupid = Integer.parseInt(req.getParameter("gid"));
        int lid = Integer.parseInt(req.getParameter("lid"));
        int subid = Integer.parseInt(req.getParameter("subid"));
        GroupDBContext groupDB = new GroupDBContext();
        Group group = groupDB.get(groupid, lid, subid);
        req.setAttribute("group", group);
        req.getRequestDispatcher("../view/lecturer/statusattend.jsp").forward(req, resp);
    }

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

}
