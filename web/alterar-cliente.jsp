<%-- 
    Document   : alterar-cliente
    Created on : 31/03/2019, 23:00:37
    Author     : Jefferson V.
--%>

<%@page import="br.com.projeto3.BDClientes"%>
<%@page import="br.com.projeto3.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <%Clientes c = BDClientes.getClientesList().get(id);%>
        
        <h2>Alterar Cliente</h2>
        <h3>ID: <b><%= id %></b></h3>
        <form action="lista-cliente.jsp">
            Nome: <br/><input type="text" name="nome" value="<%=c.getNome()%>"/>
            CPF: <br/><input type="text" name="cpf" value="<%=c.getCpf()%>"/>
            RG: <br/><input type="text" name="rg" value="<%=c.getRg()%>"/>
            <br/>E-mail: <br/><input type="text" name="email" value="<%=c.getEmail()%>"/>
            <br/>Telefone: <br/><input type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/>Endereço: <br/><input type="text" name="endereco" value="<%=c.getEndereco()%>"/>
            
            <hr/><h4>Tem certeza que deseja alterar esse registro?</h4>
            <input type="submit" name="alterar" value="Sim">
            <input type="submit" name="alterar" value="Não">
            <input type="hidden" name="id" value="<%=id%>">
        </form>
    </body>
</html>
