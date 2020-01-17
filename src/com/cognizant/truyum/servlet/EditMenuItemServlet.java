package com.cognizant.truyum.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.dao.MenuItemDaoCollectionImpl;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

@WebServlet("/EditMenuItem")
public class EditMenuItemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String isactive = request.getParameter("active");
        String dateOfLaunch = request.getParameter("dateoflaunch");
        String category = request.getParameter("category");
        String isfreeDelivery = request.getParameter("freedelivery");

        boolean active = false;
        boolean freeDelivery = false;
        // Radio button
        if (isactive.equals("No")) {
            active = false;
        } else {
            active = true;
        }
        // check box
        if (isfreeDelivery == null) {
            freeDelivery = false;

        } else {
            freeDelivery = true;
        }
        MenuItem menuitem = new MenuItem(id, name, price, active,
                DateUtil.convertToDate(dateOfLaunch), category, freeDelivery);
        MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
        menuItemDao.modifyMenuItem(menuitem);
        request.getRequestDispatcher("edit-menu-item-status.jsp").forward(request, response);

    }
}