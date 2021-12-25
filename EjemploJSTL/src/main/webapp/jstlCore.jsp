<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL y variables implicitas</title>
    </head>
    <body>
        <h1>JSP que lee los valores del JavaBean</h1>
        <br/>
        <c:set var="nombre" value="Ernesto"/>
        Variable nombre: <c:out value="${nombre}"/>
        <br/>
        <c:out value="<h4>Hola</h4>" escapeXml="false"/>
        <c:set var="bandera" value="true"/>
        <c:if test="${bandera}">
            La bandera es verdadera
        </c:if>
            <br/>
       <a href="index.jsp">Regresar al Inicio</a>
    </body>
</html>
