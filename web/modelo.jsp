<%-- 
    Document   : modelo
    Created on : 06/08/2017, 21:00:15
    Author     : Fabio Gomes Rocha
    Disciplina : Programação Web II
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pg" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
    <pg:headerTitle titulo="Minha Página" />
        <body>
            <pg:headerPager titulo="Clinica" subtitulo="Sei la" banner="beta 0.1" />
                <div id="container">
                        <nav>
                                <h3>Menu</h3>
                                <a href="#">Link 1</a>
                                <a href="#">Link 2</a>
                        </nav>
                        <section>
                                <article>
                                        <header>
                                                <h1>Titulo</h1>
                                        </header>
                                        <p> noticia </p>
                                        <footer><h2>Link</h2></footer>
                                </article>
                                <article>
                                        <header>
                                                <h1>Titulo</h1>
                                        </header>
                                        <p> noticia </p>
                                        <footer><h2>Link</h2></footer>
                                </article>
                        </section>
                        <aside>
                                <h3>Saiba mais!</h3>
                                <p>Texto</p>
                        </aside>
                        <pg:footerPage message="Disciplina de Programação Web II" />
                </div>

        </body>
</html>
