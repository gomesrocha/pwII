<%-- 
    Document   : cadastro
    Created on : 11/08/2017, 19:52:16
    Author     : 10361
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pg" tagdir="/WEB-INF/tags/" %>

<!DOCTYPE html>
<html>
    <pg:headerTitle titulo="Minha Página" />
    <body>
        <pg:headerPager titulo="Clinica" subtitulo="Sei la" banner="beta 0.1" />
        <div id="container">
            <h2>Formulário de cadastro</h2>
            
            <form action="form" method="post">
                Nome: <input type="text" name="nome" value="" size="20" /><br />
                Email: <input type="text" name="email" value="" size="20" /><br />
                <input type="submit" value="Cadastrar" />
            </form>
        </div>
        <pg:footerPage message="Disciplina de Programação Web II" />

    </body>
</html>
