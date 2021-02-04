

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    try {
        if (name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin")) {
            response.sendRedirect("ahome.jsp");
        } else {
            response.sendRedirect("alog.jsp");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>