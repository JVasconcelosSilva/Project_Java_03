<%-- 
    Document   : excluir-fornecedor
    Created on : 30/03/2019, 16:44:45
    Author     : Jonh.
--%>

<%@page import="br.com.projeto3.BDFornecedores"%>
<%@page import="br.com.projeto3.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Fornecedores</title>
        <style>
            #corpoexcluir{
                margin-left: 40px;
            }
        </style>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Fornecedores c = BDFornecedores.getFornecedoresList().get(id);%>
        <div id="corpoexcluir">
            <h2>Excluir Fornecedor</h2>
            <br>
            <h3>ID: <b><%=id%></b></h3>
            <h3>Nome: <b><%=c.getNome()%></b></h3>
            <h3>CNPJ: <b><%=c.getCnpj()%></b></h3>
            <h3>Razão social: <b><%=c.getRazao()%></b></h3>
            <h3>E-mail: <b><%=c.getEmail()%></b></h3>
            <h3>Telefone: <b><%=c.getTelefone()%></b></h3>
            <h3>Endereço: <b><%=c.getEndereco()%></b></h3>
            <hr>
            <form action="lista-fornecedor.jsp">
                <h4>Tem certeza que deseja excluir esse registo?</h4>
                <input type="hiden" name="id" value="<%=id%>" style="width: 110px;">
                <br><input type="submit" class="btn btn-success" name="excluir" value="Sim">
                <input type="submit" class="btn btn-danger" name="excluir" value="Não">

            </form>
        </div>
    </body>
    <%@include file="WEB-INF/jspf/footer.jsp" %>
</html>