<%-- 
    Document   : lista-cliente
    Created on : 30/03/2019, 14:05:52
    Author     : John.
--%>

<%@page import="br.com.projeto3.Fornecedores"%>
<%@page import="br.com.projeto3.BDFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jsp" %> 

<%
    if (request.getParameter("adicionar") != null) {
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        Fornecedores novoContato = new Fornecedores();
        novoContato.setNome(nome);
        novoContato.setTelefone(telefone);
        novoContato.setEmail(email);
        BDFornecedores.getFornecedoresList().add(novoContato);
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("excluir") != null) {
        String resposta = request.getParameter("excluir");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BDFornecedores.getFornecedoresList().remove(id);
        }
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("alterar") != null) {
        String resposta = request.getParameter("alterar");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Fornecedores novoContato = new Fornecedores();
            novoContato.setNome(request.getParameter("nome"));
            novoContato.setTelefone(request.getParameter("telefone"));
            novoContato.setEmail(request.getParameter("email"));
            BDFornecedores.getFornecedoresList().set(id, novoContato);

        }
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Fornecedores</title>

        <style>
            corpo{
                margin-left: 20px;
            }
            #tabela {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 90%;
                margin-left: 20px;
            }

            #tabela td, #tabela th {
                border: 1px solid #000000;
                padding: 8px;
            }

            #tabela tr:nth-child(even){background-color: #f2f2f2;}

            #tabela th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #0077b3;
                color: white;
            }
            #tabela td.buttons{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div id="corpo">
            <h2 style="margin-left: 20px;">Lista de Fornecedores</h2>

            <form action="incluir-fornecedor.jsp">
                <!--                <input type="submit" value="Adicionar">-->
                <button type="submit" class="btn btn-primary" value="Adicionar" style="margin-left: 20px;">Novo Fornecedor</button>
            </form>
            <br>
            <h3 style="margin-left: 20px;">Listagem</h3>
            <table border="1" id="tabela">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CNPJ</th>
                    <th>Razão social</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Comandos</th>
                </tr>
                <%for (Fornecedores c : BDFornecedores.getFornecedoresList()) {%>
                <tr>
                    <%int id = BDFornecedores.getFornecedoresList().indexOf(c);%>

                    <td><%= id%></td>
                    <td><%= c.getNome()%></td>
                    <td><%= c.getCnpj()%></td>
                    <td><%= c.getRazao()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><%= c.getTelefone()%></td>
                    <td><%= c.getEndereco()%></td>
                    <td class="buttons">
                        <a href="alterar-fornecedor.jsp?id=<%=id%>">
                            <button type="button" class="btn btn-warning">Alterar</button>

                        </a>
                        <a href="excluir-fornecedor.jsp?id=<%=id%>">
                            <button type="button" class="btn btn-danger">Excluir</button>
                        </a>
                    </td>
                </tr>

                <%}%>
            </table>
        </div>
        <br><br><br><br><br><br>
    </body>
    <%@include file="WEB-INF/jspf/footer.jsp" %>
</html>