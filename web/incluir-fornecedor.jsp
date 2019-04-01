<%-- 
    Document   : incluir-fornecedor
    Created on : 30/03/2019, 14:48:19
    Author     : John.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Fornecedor</title>
        <style>
            #form{
                width: 200px;
                margin-left: 40px;
            }
            #form input{
                width: 200px;
            }
            h2{
                margin-left: 40px;
            }
        </style>
    </head>
    <body>

        <br>
        <h2>Novo Fornecedor</h2>
        <form action="lista-fornecedor.jsp" id="form">
            Nome <br/><input type="text" name="nome" required/>
            <br/>CNPJ <br/><input type="text" name="cnpj" required/>
            <br/>Razão social <br/><input type="text" name="razao" required/>
            <br/>E-mail <br/><input type="text" name="email" required/>
            <br/>Telefone <br/><input type="text" name="telefone" required/>
            <br/>Endereço <br/><input type="text" name="endereco" required/>
            <br/><br/>
            <input type="submit" class="btn btn-primary" name="adicionar" value="Adicionar">
        </form>






    </body>
    <%@include file="WEB-INF/jspf/footer.jsp" %>
</html>