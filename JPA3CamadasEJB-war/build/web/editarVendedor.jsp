<%-- 
    Document   : editarVendedor
    Created on : 12/05/2017, 10:54:56
    Author     : internet
--%>

<%@page import="mvc.model.entidades.Vendedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Vendedor v = (Vendedor)request.getAttribute("vendedor");
        %>
        <form action="AtualizarVendedor" method="GET">
            Nome: <input type="text" name="nome" value="<%=v.getNome()%>" />
            <br />
            <br />
            <input type="hidden" name="id" value="<%=v.getId()%>" />
            <br />
            <input type="submit" value="Atualizar"/>
        </form>
    </body>
</html>
