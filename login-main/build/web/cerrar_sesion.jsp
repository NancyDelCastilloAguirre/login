
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--
    Se cierra la sesión
--%>
<%
HttpSession sesion = request.getSession();
sesion.invalidate();

out.println("<p>La sesión se ha cerrado correctamente</p>");
out.println("<p><a href=index.jsp>Iniciar sesión</a></p>");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrar sesion</title>
    </head>
    <body>
        <h1>cerrar_sesion.jsp</h1>
        
    </body>
</html>
