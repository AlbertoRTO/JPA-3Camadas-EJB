<%-- 
    Document   : editarVenda
    Created on : 23/05/2017, 21:11:17
    Author     : ADSA JD São Vicente
--%>

<%@page import="mvc.model.entidades.Produto"%>
<%@page import="mvc.model.entidades.Vendedor"%>
<%@page import="java.util.List"%>
<%@page import="mvc.model.entidades.Venda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            Venda venda = (Venda)request.getAttribute("venda");
            List<Vendedor> vendedores = (List<Vendedor>) request.getAttribute("vendedores");
            List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");            
        %>
        <form action="AtualizarVenda" method="GET">
            Valor da Venda: <input type="text" name="valor" value="<%=venda.getValorvenda()%>"/>
            <br />
            Produto: 
            <select name="idProduto">
                <% for(Produto p : produtos){ %>
                    <% if (p.getId() == venda.getProduto().getId()) { %>
                        <option value="<%=p.getId()%>" selected><%=p.getNome()%></option>
                    <% } else { %>
                        <option value="<%=p.getId()%>"><%=p.getNome()%></option>
                    <% } %>
                <% } %>
            </select>
            Venda: 
            <br />
            <select name="idVendedor">
                <% for(Vendedor v : vendedores){ %>
                <% if (v.getId() == venda.getVendedor().getId()) { %>
                <option value="<%=v.getId()%>" selected><%=v.getNome()%></option>
                <% } else { %>
                        <option value="<%=v.getId()%>"><%=v.getNome()%></option>
                    <% } %>
                <% } %>
            </select>
           <br />
            <input type="hidden" name="id" value="<%=venda.getId()%>"/>
            <br />
            <input type="submit" value="Atualizar" />
        </form>
    </body>
</html>
