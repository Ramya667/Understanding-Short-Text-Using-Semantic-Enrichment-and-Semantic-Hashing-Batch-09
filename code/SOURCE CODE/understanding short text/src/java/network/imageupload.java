/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/Upload")
@MultipartConfig(maxFileSize = 16177215)
public class imageupload extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/shorttext";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        String name = request.getParameter("name");
        String sname = request.getParameter("sname");
        String des = request.getParameter("des");
        System.out.println("upload content="+name+sname+des);
       
//        String age = request.getParameter("age");
//        String wight = request.getParameter("wight");
//        String height = request.getParameter("height");
//        String brief = request.getParameter("brief");
//        String addomiss = request.getParameter("addomiss");
//        String dateofreport = request.getParameter("dateofreport");

        InputStream inputStream = null;
        Part filePart = request.getPart("file");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO image (name, sname, des, photo, rank) values (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, sname);
            statement.setString(3, des);
            
            
            
            if (inputStream != null) {
                statement.setBlob(4, inputStream);
            }
            statement.setString(5, "0");
            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("upimage.jsp?msg=success");
            } else {
                response.sendRedirect("upimage.jsp?msgg=Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}