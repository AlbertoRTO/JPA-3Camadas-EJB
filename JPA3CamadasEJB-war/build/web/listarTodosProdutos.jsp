<%-- 
    Document   : ListarTodosProdutos
    Created on : 23/05/2017, 18:46:39
    Author     : ADSA JD São Vicente
--%>

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
            List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
            
            if(produtos.size()<1){
        %>
         <h1>Não há produtos cadastrados!!!</h1>
        <%
            }else{
        %>
        <table>
            <th>Nome Produto</th>
            <th></th>
            <th></th>
            <%
                for(Produto p : produtos){
            %>
            <tr>
                <td><%=p.getNome()%></td>
                <td><a href="ExcluirProduto?id=<%=p.getId()%>">excluir</a></td>
                <td><a href="ListarProduto?id=<%=p.getId()%>">atualizar</a></td>
            </tr>
            <%
                }
            %>
        </table>
            <%
                }
            %>
            <br />
            <a href="CadastrarProduto.html">Cadastrar Novo Produto</a>
             <br/>
            <a href="index.html">Voltar a pagina principal</a>
    </body>
</html>
