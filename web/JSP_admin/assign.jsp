<%-- 
    Document   : assign
    Created on : 28 Jan, 2019, 7:01:29 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
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
            int y=0;
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("insert into assign(rid,title,name) values(?,?,?)");
            ps.setString(1, request.getParameter("c"));
            ps.setString(2, request.getParameter("b"));
            ps.setString(3, request.getParameter("a"));
            int x=ps.executeUpdate();
            PreparedStatement ps1=con.prepareStatement("select * from resource where rid=?");
            ps1.setString(1, request.getParameter("c"));
            ResultSet rs=ps1.executeQuery();
            while(rs.next())
            {
                String stat=Integer.toString(Integer.parseInt((rs.getString("status")))+1);
                PreparedStatement ps2=con.prepareStatement("update resource set status=? where rid=?");
                ps2.setString(1, stat);
                ps2.setString(2, request.getParameter("c"));
                y=ps2.executeUpdate();
            }
            PreparedStatement ps2=con.prepareStatement("update paper set assign=1 where username=? and title=?");
            ps2.setString(1, request.getParameter("a"));
            ps2.setString(2, request.getParameter("b"));
            int z=ps2.executeUpdate();
            if(x>0 && y>0 && z>0 )
            {
                response.sendRedirect("view1.jsp");
            }
            %>
            
    </body>
</html>
