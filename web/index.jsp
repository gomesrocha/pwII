<%-- 
    Document   : index
    Created on : 02/08/2017, 21:11:44
    Author     : 10361
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/conect.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getParameter("id")!=null){
                String sqldel = "delete from usuario where id=" + request.getParameter("id");
                int resdel = stm.executeUpdate(sqldel);
                if(resdel>0){
                    out.println("Registro removido com sucesso");
                } else {
                    out.println("Deu merda!!!");
                }
        }
        %>
        <jsp:include page="WEB-INF/jspf/topo.jspf" />
        <jsp:useBean class="beans.FtData" id="data" />
        O mes atual é <%=data.mesExt(8)%>
        <%
            if(request.getParameter("nome")==null){
         %>
        <form action="index.jsp" method="post" name="frmUser">
            <table><tr>
                    <td>Nome:</td>
                    <td><input name="nome" type="text" /></td>
                </tr><tr>
                    <td>Usuario:</td>
                    <td><input name="usuario" type="text" /></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha" value="" /></td>
                </tr>
            </table>
            <input type="submit" value="Cadastrar" />
            
        </form>
        <%
        } else{
            String nome = request.getParameter("nome");
            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");
            
            String sql = "insert into usuario(nome, usuario, senha) values ('"
                + nome +"','" + usuario +"','" + senha +"')";
                out.println(sql);
            int res = stm.executeUpdate(sql);
            if(res > 0){
                out.println("Registro incluido com sucesso");
            } else {
                out.println("Se ferrou");
            }
        }
        %>
        <br />
        Dados cadastrados
        <br />
        <table>
        <%
        ResultSet res = stm.executeQuery("select * from usuario");
        if(res.next()){
            do{
                
                out.println("<tr><td>Nome: </td><td>" + res.getString(2));
                out.println("</td></tr><tr><td>Usuario:</td><td>" + res.getString(3));
                out.println("</td></tr><tr><td colspan='2'><a href='index.jsp?id=" + res.getString(1)+"'>remover</a></td></tr>");
                out.println("</td></tr><tr><td colspan='2'><a href='updade.jsp?id=" + res.getString(1)+"'>Atualizar</a></td></tr>");
            } while(res.next());
        } else {
            out.println("Sem usuários");
        }
            
            
        %>
        </table>
        
        <jsp:include page="WEB-INF/jspf/rodape.jspf" />
    </body>
</html>
