<%-- 
    Document   : lista-cliente
    Created on : 30/03/2019, 14:05:52
    Author     : Jefferson V.
--%>


<%@page import="br.com.projeto3.BDClientes"%>
<%@page import="br.com.projeto3.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jspf/header.jsp" %>

<%
    if (request.getParameter("adicionar") != null) {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");

        Clientes novoCliente = new Clientes();
        novoCliente.setNome(nome);
        novoCliente.setCpf(cpf);
        novoCliente.setRg(rg);
        novoCliente.setEmail(email);
        novoCliente.setTelefone(telefone);
        novoCliente.setEndereco(endereco);

        BDClientes.getClientesList().add(novoCliente);
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("excluir") != null) {
        String resposta = request.getParameter("excluir");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            BDClientes.getClientesList().remove(id);
        }
        response.sendRedirect(request.getRequestURI());
    } else if (request.getParameter("alterar") != null) {
        String resposta = request.getParameter("alterar");
        if (resposta.equals("Sim")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Clientes novoCliente = new Clientes();
            novoCliente.setNome(request.getParameter("nome"));
            novoCliente.setCpf(request.getParameter("cpf"));
            novoCliente.setRg(request.getParameter("rg"));
            novoCliente.setEmail(request.getParameter("email"));
            novoCliente.setTelefone(request.getParameter("telefone"));
            novoCliente.setEndereco(request.getParameter("endereco"));

            BDClientes.getClientesList().set(id, novoCliente);

        }
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>

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
            <h2 style="margin-left: 20px;">Lista de Clientes</h2>

            <form action="incluir-cliente.jsp">
                <!--                <input type="submit" value="Adicionar">-->
                <button type="submit" class="btn btn-primary" value="Adicionar" style="margin-left: 20px;">Novo Cliente</button>
            </form>
            <br>
            <h3 style="margin-left: 20px;">Listagem</h3>
            <table border="1" id="tabela">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Comandos</th>
                </tr>
                <%for (Clientes c : BDClientes.getClientesList()) {%>
                <tr>
                    <%int id = BDClientes.getClientesList().indexOf(c);%>

                    <td><%= id%></td>
                    <td><%= c.getNome()%></td>
                    <td><%= c.getCpf()%></td>
                    <td><%= c.getRg()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><%= c.getTelefone()%></td>
                    <td><%= c.getEndereco()%></td>
                    <td class="buttons">
                        <a href="alterar-cliente.jsp?id=<%=id%>">
                            <button type="button" class="btn btn-warning">Alterar</button>

                        </a>
                        <a href="excluir-cliente.jsp?id=<%=id%>">
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
