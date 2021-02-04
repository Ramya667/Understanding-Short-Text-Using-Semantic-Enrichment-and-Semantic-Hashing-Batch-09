

<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
System.out.println("in Reg1.jsp");
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String mail=request.getParameter("mail");
String gen=request.getParameter("gen");
String date=request.getParameter("date");
System.out.println("date="+ date);
String cell=request.getParameter("cell");
String loc=request.getParameter("loc");
Connection con=DbConnection.getConnection();
Statement sto = con.createStatement();
try {

        int i = sto.executeUpdate("insert into reg(name, pass, mail, gen, date, cell, loc)values('" + name + "','" + pass + "','" + mail + "','" + gen + "','" + date + "','" + cell + "','" + loc + "')");
        if (i != 0) {
            System.out.println("success");
            response.sendRedirect("reg.jsp");
        } else {
            System.out.println("failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

