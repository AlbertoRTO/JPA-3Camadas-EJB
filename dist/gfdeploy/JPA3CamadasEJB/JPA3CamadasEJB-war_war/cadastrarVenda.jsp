<%-- 
    Document   : cadastrarVenda
    Created on : 19/05/2017, 10:44:06
    Author     : internet
--%>

<%@page import="mvc.model.entidades.Produto"%>
<%@page import="java.util.List"%>
<%@page import="mvc.model.entidades.Vendedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        List<Vendedor> vendedores = (List<Vendedor>) request.getAttribute("vendedores");
        List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");

    %>
    
    <body>
       <form action="CadastrarVenda" method="get">
            Valor  Venda: <input type="text" name="valor" />
          
            Produto: 
            <select name="idProduto">
                <% for(Produto p : produtos){ %>
                <option value="<%=p.getId()%>"><%=p.getNome()%></option>
                <% } %>
            </select>
            Venda: 
            <select name="idVendedor">
                <% for(Vendedor v : vendedores){ %>
                <option value="<%=v.getId()%>"><%=v.getNome()%></option>
                <% } %>
            </select>
            <input type="submit" value="Cadastrar"/>
       </form>
    </body>
</html>
