<%-- 
    Document   : topo
    Created on : 02/08/2017, 18:43:24
    Author     : Rocha
--%>

<%@page import="beans.FtData"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>
                
    <jsp:useBean id="data" class="beans.FtData"/>
<%
            int mes = Integer.parseInt((new SimpleDateFormat("MM")).format(new Date()));
            
            %>
            O mês atual é <%=data.mesExt(mes)%>
        </body>
</html>
