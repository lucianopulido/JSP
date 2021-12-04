<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hola Mundo JSPs</title>
    </head>
    <body>
        <h1>Hola Mundo JSPs</h1>
    <u1>
        <li><% out.print("Hola Mundo con Scriptlets");%></li> 
        <li>${"Hola Mundo con expression language (EL) "}</li>
        <li><%= "Hola Mundo con expresiones" %></li>
        <li><c:out value="Hola Mundo con jstl"/></li>
    </u1>
    </body>
</html>
