<%-- 
    Document   : area
    Created on : 06/10/2013, 01:59:49 PM
    Author     : LAB704-00
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Usando PI igual a <%=pi%>, el área del círculo<br>
        con un radio de 3 es  <%=area(3)%>
        <%!
        double area(double r) {
           return r*r*pi;
        }
        %>
        <%! final double pi=3.14159; %>

    </body>
</html>
