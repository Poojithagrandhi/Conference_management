<%-- 
    Document   : logout
    Created on : 27 Jan, 2019, 12:27:17 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
            HttpSession s= request.getSession();
            if(s!=null)
            {
                s.invalidate();
                response.sendRedirect("login.jsp");
            }
            
            %>
    </body>
</html>
