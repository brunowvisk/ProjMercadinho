
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Controlador" content="text/html; charset=UTF-8">
        <title>Controlador = executa_excluir</title>
    </head>
    <body>
        <%
          try{
              ProdutoDAO prd = new ProdutoDAO();
              prd.excluir(Integer.parseInt(request.getParameter("codigo")));
                  response.sendRedirect("index.jsp");
          } catch(Exception erro){
              throw new RuntimeException("Erro 9:" + erro);
          }
        %>
    </body>
</html>