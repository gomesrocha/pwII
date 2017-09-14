
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
            String nome = "";
            String usuario = "";
            String senha = "";
            int id = Integer.parseInt(request.getParameter("id"));
            
            if(request.getParameter("nome")!=null){
            nome = request.getParameter("nome");
            usuario = request.getParameter("usuario");
            senha = request.getParameter("senha");
            String sql = "Update usuario set nome='"+nome +"',usuario='" + usuario+"',senha='" + senha +"' where id="+ id;
                out.println(sql);
           
            int resultado = stm.executeUpdate(sql);
            if(resultado > 0){
                out.println("Registro incluido com sucesso");
            } else {
                out.println("Se ferrou");
            }
        } else {
        ResultSet res = stm.executeQuery("select * from usuario where id="+id);
        if(res.next()){
            
                nome = res.getString(2);
                usuario = res.getString(3);
                senha = res.getString(4);
                            
        } else {
            out.println("Sem usuários");
        }    
                }

        %>
        <form action="updade.jsp" method="get" name="frmUser">
            <input  name="id" type="text" value="<%=id%>" hidden="true"/>
            <table>
                
                <tr>
                    <td>Nome:</td>
                    <td><input name="nome" type="text" value="<%=nome%>"/></td>
                </tr><tr>
                    <td>Usuario:</td>
                    <td><input name="usuario" type="text" value="<%=usuario%>"/></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha" value="<%=senha%>" /></td>
                </tr>
            </table>
            <input type="submit" value="Atualizar" />
            
        </form>
                
            
    </body>
</html>
