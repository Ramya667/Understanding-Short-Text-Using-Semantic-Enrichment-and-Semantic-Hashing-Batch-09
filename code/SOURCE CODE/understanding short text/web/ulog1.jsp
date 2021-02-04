<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String name = request.getParameter("name");
String pass = request.getParameter("pass");

Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs=null;
    System.out.println("Enter user Name and Password:"+name+pass);
    try{
        rs=st.executeQuery("select * from reg where BINARY name='"+name+"' and BINARY pass='"+pass+"'");
        if(rs.next()){
           
            session.setAttribute("sname", rs.getString("name"));
            session.setAttribute("semail", rs.getString("mail"));
            session.setAttribute("sid", rs.getString("id"));
            response.sendRedirect("uhome.jsp");
        }else{
            
            response.sendRedirect("ulog.jsp"); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
             
             %>