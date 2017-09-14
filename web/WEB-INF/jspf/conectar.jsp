<%-- any content can be specified here e.g.: --%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page pageEncoding="UTF-8" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/pwII",
            "fabio", "fabio");
    Statement stm = con.createStatement();
%>