<%@page import="java.util.*"%>
<html>
 <body>
    <%
    Collection<String> c = new ArrayList<String>();
    c.add("servlets");
    c.add("jsp");
    c.add("beans");
    c.add("tags");
    %>

    <h1>Listado</h1>
    <ul>        
        <% for(String item : c){ %> 
        <li> <%=item%> </li>
        <% } %>
    </ul>

</body>
</html>

