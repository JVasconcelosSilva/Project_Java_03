<%-- 
    Document   : alterar-cliente
    Created on : 31/03/2019, 23:00:37
    Author     : Jefferson V.
--%>

<%@page import="br.com.projeto3.BDClientes"%>
<%@page import="br.com.projeto3.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
        <style>

            #formulario{
                margin-left: 40px;
            }
        </style>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Clientes c = BDClientes.getClientesList().get(id);%>

        <div id="formulario">
            <br>
            <h2>Alterar Cliente</h2>
            <h3>ID: <b><%= id%></b></h3>
            <form action="lista-cliente.jsp" >
                Nome:<br><input type="text" name="nome" value="<%=c.getNome()%>"/>
                <br/>CPF:<br><input type="text" name="cpf" value="<%=c.getCpf()%>"/>
                <br/>RG:<br><input type="text" name="rg" value="<%=c.getRg()%>"/>
                <br/>E-mail:<br/><input type="text" name="email" value="<%=c.getEmail()%>"/>
                <br/>Telefone:<br/><input type="text" name="telefone" value="<%=c.getTelefone()%>"/>
                <br/>Endereço:<br/><input type="text" name="endereco" value="<%=c.getEndereco()%>"/>

                <hr/><h4>Tem certeza que deseja alterar esse registro?</h4>
                <input type="submit" class="btn btn-success" name="alterar" value="Sim">
                <input type="submit" class="btn btn-danger" name="alterar" value="Não">
                <input type="hidden" name="id" value="<%=id%>">
            </form>
        </div>
    </body>
    <%@include file="WEB-INF/jspf/footer.jsp" %>
</html>
