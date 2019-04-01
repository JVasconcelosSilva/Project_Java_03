<%-- 
    Document   : lista-cliente
    Created on : 30/03/2019, 14:05:52
    Author     : John.
--%>

<%@page import="br.com.projeto3.Fornecedores"%>
<%@page import="br.com.projeto3.BDFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            <title>Contatos WebApp</title>
        </head>
        <body>
            <h1>WebApp</h1>
            <h2>Contatos</h2>

            <form action="adicionar.jsp">
                <input type="submit" value="Adicionar">
            </form>
            <h3>Listagem</h3>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CNPJ</th>
                    <th>Razão</th>
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
                    <td>
                        <a href="alterar.jsp?id=<%=id%>">
                            <button>Alterar</button>

                        </a>
                        <a href="excluir.jsp?id=<%=id%>">
                            <button>Excluir</button>
                        </a>
                    </td>
                </tr>

                <%}%>
            </table>

        </body>
        <%@include file="WEB-INF/jspf/footer.jsp" %>
    </html>