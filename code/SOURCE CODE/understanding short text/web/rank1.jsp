
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id = request.getParameter("result");
//              String s = request.getQueryString();
            System.out.println("your value="+id);
            session.setAttribute("result", id);
           
            int i = 1;
            Integer r = null;
            Connection con = DbConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from image  where id='" + id + "'");
            while (rs.next()) {
                r = rs.getInt("rank");
            }            
            int a = r+1;
           
            System.out.println("here added " + a);
            int up = st.executeUpdate("update image set rank ='" + a + "' where id = '" + id + "'");
            if (up != 0) {
                response.sendRedirect("result.jsp?");
                System.out.println("updated sucess..!");
            }
        %>
        
    </body>
</html>
<%
    
%>
