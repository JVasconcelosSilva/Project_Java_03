<%-- 
    Document   : incluir-cliente
    Created on : 30/03/2019, 14:48:19
    Author     : Jefferson V.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Cliente</title>
    </head>
    <body>
        
        <h2>Novo Cliente</h2>
        <form action="lista-cliente.jsp">
            <br/>Nome: <br/><input type="text" name="nome" required/>
            <br/>CPF: <br/><input type="text" name="cpf" required/>
            <br/>RG: <br/><input type="text" name="rg" required/>
            <br/>E-mail: <br/><input type="text" name="email" required/>
            <br/>Telefone: <br/><input type="text" name="telefone" required/>
            <br/>Endereço: <br/><input type="text" name="endereco" required/>
            <br/><br/><input type="submit" name="adicionar"/>
        </form>  
    </body>
</html>
