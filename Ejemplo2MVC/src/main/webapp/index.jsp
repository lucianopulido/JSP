<!DOCTYPE html>
<html>
    <head>
        <title>Ejemplo2 MVC</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Ejemplo2 MVC</h1>
        <br/>
        <div style="color:red">${mensaje}</div>
        <br/><br/>
        <a href="${pageContext.request.contextPath}/ServletControlador">Link al Servlet Controlador sin parametros</a>
        <br/><br/>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=agregarVariables">
            Link al Servlet Controlador para agregar las variables
        </a>
        <br/><br/>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarVariables">
            Link al Servlet Controlador para listar las variables
        </a>
        <br/><br/>
    </body>
</html>
