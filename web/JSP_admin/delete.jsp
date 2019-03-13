<%-- 
    Document   : delete
    Created on : 27 Jan, 2019, 1:24:31 PM
    Author     : pooji
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String a=request.getParameter("a");
                connects co=new connects();
                Connection con=co.con();
                PreparedStatement ps=con.prepareStatement("delete from resource where rid=?");
                ps.setString(1, a);
                int x=ps.executeUpdate();
                if(x>0)
                {
                    response.sendRedirect("view.jsp");
                }
            %>
    </body>
</html>
