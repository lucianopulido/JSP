<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP que modifica a un JavaBean</title>
    </head>
    <body>
        <h1>JSP que modifica a un JavaBean</h1>
        <jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session"/>
        Modificamos los atributos:
        <br/>
        <%
            int baseValor = 5;
            int alturaValor = 10;
        %>
        <jsp:setProperty name="rectangulo" property="base" value="<%=baseValor%>"/>
        <jsp:setProperty name="rectangulo" property="altura" value="<%=alturaValor%>"/>
        <br/>
        Nuevo Valor de Base: <%=baseValor%>
        <br/>
        Nuevo Valor de Altura: <%=alturaValor%>
        <br/>
        <a href="index.jsp">Regresar al Inicio</a>
    </body>
</html>
