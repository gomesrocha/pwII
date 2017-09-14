<%-- 
    Document   : headerPager
    Created on : 11/08/2017, 19:22:33
    Author     : 10361
--%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="titulo"%>
<%@attribute name="subtitulo"%>
<%@attribute name="banner"%>
<header>
    <h1>${titulo}</h1>
    <h2>${subtitulo}</h2>
    <h4>${banner}</h4>
</header>