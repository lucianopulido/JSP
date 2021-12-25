<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL y variables implicitas</title>
    </head>
    <body>
        <h1>JSP que lee los valores del JavaBean</h1>
        <ul>
            <li>Nombre de la aplicación: ${pageContext.request.contextPath}</li>
            <li>Navegador del cliente: ${header["User-Agent"]}</li>
            <li>Id Sesion: ${cookie.JSESSIONID.value}</li> 
            <li>Web Server: ${pageContext.servletContext.serverInfo}</li>
            <li>Valor parametro: ${param.usuario}</li>
        </ul> 
        <br/>
       <a href="index.jsp">Regresar al Inicio</a>
    </body>
</html>
