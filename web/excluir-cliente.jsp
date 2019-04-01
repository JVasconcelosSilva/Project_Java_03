<%-- 
    Document   : excluir-cliente
    Created on : 30/03/2019, 16:44:45
    Author     : Jefferson V.
--%>

<%@page import="br.com.projeto3.BDClientes"%>
<%@page import="br.com.projeto3.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Clientes</title>
    </head>
    <body>
        <% int id = Integer.parseInt(request.getParameter("id"));%>
        <% Clientes c = BDClientes.getClientesList().get(id);%>
        <h1>WebApp</h1>
        <h2>Novo Cliente</h2>
        <h3>ID: <b><%=id%></b></h3>
        <h3>Nome: <b><%=c.getNome()%></b></h3>
        <h3>CPF: <b><%=c.getCpf()%></b></h3>
        <h3>RG: <b><%=c.getRg()%></b></h3>
        <h3>E-mail: <b><%=c.getEmail()%></b></h3>
        <h3>Telefone: <b><%=c.getTelefone()%></b></h3>
        <h3>Endereço: <b><%=c.getEndereco()%></b></h3>
        
        <form action="lista-cliente.jsp">
            <h4>Tem certeza que deseja excluir esse registo?</h4>
            <input type="submit" name="excluir" value="Sim">
            <input type="submit" name="excluir" value="Não">
            <input type="hiden" name="id" value="<%=id%>">
        </form>
    </body>
</html>
