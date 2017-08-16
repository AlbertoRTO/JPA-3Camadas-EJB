<%-- 
    Document   : editarProduto
    Created on : 23/05/2017, 19:15:07
    Author     : ADSA JD São Vicente
--%>

<%@page import="mvc.model.entidades.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            Produto p = (Produto)request.getAttribute("produto");
        %>
        <form action="AtualizarProduto" method="GET">
            Nome: <input type="text" name="nome" value="<%=p.getNome()%>" />
            <br />
            <br />
            <input type="hidden" name="id" value="<%=p.getId()%>" />
            <br />
            <input type="submit" value="Atualizar"/>
        </form>
    </body>
</html>
