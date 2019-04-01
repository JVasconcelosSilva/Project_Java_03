<%-- 
    Document   : lista-cliente
    Created on : 30/03/2019, 14:05:52
    Author     : Jefferson V.
--%>


<%@page import="br.com.projeto3.BDClientes"%>
<%@page import="br.com.projeto3.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%@include file="../WEB-INF/jspf/header.jsp" %> 
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
        </head>
        <body>
            
            <h2>Clientes</h2>

            <form action="incluir-cliente.jsp">
                <input type="submit" value="Adicionar">
            </form>
            <h3>Listagem</h3>
            <table border="1">
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
                    <td>
                        <a href="alterar-cliente.jsp?id=<%=id%>">
                            <button>Alterar</button>

                        </a>
                        <a href="excluir-cliente.jsp?id=<%=id%>">
                            <button>Excluir</button>
                        </a>
                    </td>
                </tr>

                <%}%>
            </table>

        </body>
    </html>
