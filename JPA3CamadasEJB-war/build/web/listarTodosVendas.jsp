<%-- 
    Document   : ListarVendas
    Created on : 19/05/2017, 11:02:06
    Author     : internet
--%>

<%@page import="mvc.model.entidades.Venda"%>
<%@page import="mvc.model.entidades.Vendedor"%>
<%@page import="mvc.model.entidades.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Venda> vendas = (List<Venda>) request.getAttribute("vendas");
          
            if(vendas.size()<1){
        %>
            <h1>Não há vendas cadastrados!!!</h1>
        <%
            }else{
        %>
        <table>
            <th>Valor das Vendas</th>
            <th>Produtos</th>
            <th>Nome do Vendedor</th>
            <th></th>
            <th></th>
            <%
                for(Venda v : vendas){
            %>
            <tr>
                <td><%=v.getValorvenda()%></td>
                <td><%=v.getProduto().getNome()%></td>
                <td><%=v.getVendedor().getNome()%></td>
                <td><a href="ExcluirVendas?id=<%=v.getId()%>">excluir</a></td>
                <td><a href="ListarVenda?id=<%=v.getId()%>">atualizar</a></td>
            </tr>
            <%
                }
            %>
        </table>
            <%
                }
            %>
            <br />
            <a href="IniciaVenda">Cadastrar Nova Venda</a>
            <br/>
            <a href="index.html">Voltar a pagina principal</a>

    </body>
</html>
