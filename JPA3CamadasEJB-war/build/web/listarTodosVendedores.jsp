<%-- 
    Document   : listarTodosVendedores
    Created on : 12/05/2017, 09:57:57
    Author     : internet
--%>

<%@page import="java.util.List"%>
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
            List<Vendedor> vendedores = (List<Vendedor>) request.getAttribute("mensagem");
            
            if(vendedores.size()<1){
        %>
            <h1>Não há vendedores cadastrados!!!</h1>
        <%
            }else{
        %>
        <table>
            <th>Nome</th>
            <th></th>
            <th></th>
            <%
                for(Vendedor v : vendedores){
            %>
            <tr>
                <td><%=v.getNome()%></td>
                <td><a href="ExcluirVendedor?id=<%=v.getId()%>">excluir</a></td>
                <td><a href="ListarVendedor?id=<%=v.getId()%>">atualizar</a></td>
            </tr>
            <%
                }
            %>
        </table>
            <%
                }
            %>
            <br />
            <a href="cadastradVendedor.html">Cadastrar Vendedor</a>
             <br/>
            <a href="index.html">Voltar a pagina principal</a>

    </body>
</html>
