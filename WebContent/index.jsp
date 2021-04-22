<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud MVC + MySQL</title>
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
    <header>
        <div class="container p-3 my3 bg-dark text-light text-center">
        <H2>MERCADINHO SENAI</h2> 
        </div>
    </header>
        <div class="container-lg border bg-secondary text-center">        
        <form class="form-label" action="index.jsp" method="post">
            <label for="desc" class="text-light h5">DESCRIÇÃO </label><br/>
            <input type="text" class="form-label" id="desc" name="descricao" placeholder="Insira o nome do produto"/><br/>
            <button type="submit" class="btn btn-dark"> OK </button>
            <br>
            <br>
            <a href="inserir.jsp" class="badge badge-dark bg-dark text-wrap link-light h5 text-decoration-none">Cadastre um novo produto</a>
        </form>

        <%
            try{
            out.print("<table align='center' border='bold'>");              
              out.print("<tr align='center'>");
              out.print("<th style='background-color:black; color:white'>| CODIGO |</th><th style='background-color:black; color:white'> DESCRIÇÃO |</th><th style='background-color:black; color:white'> PREÇO |</th><th style='background-color:black; color:white'> EDITAR |</th><th style='background-color:black; color:white'> EXCLUIR |</th>");
              out.print("</tr>");
              ProdutoDAO prd = new ProdutoDAO();
              if (request.getParameter("descricao") == "" || request.getParameter("descricao") == null){
                  ArrayList<Produto> lista = prd.listarTodos();
                  for (int num = 0; num < lista.size(); num++){
                      out.print("<tr style='background-color:gray'>");
                      out.print("<td align='center' style='color:white'>" + lista.get(num).getCodigo_produto() + "</td>");
                      out.print("<td align='center' style='color:white'>" + lista.get(num).getDescricao_produto() + "</td>");
                      out.print("<td align='center' style='color:white'>" + lista.get(num).getPreco_produto() + "</td>");
                      out.print("<td align='center' style='color:white'><a class='link-light h5' href='alterar.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");
                      out.print("<td align='center' style='color:white'><a class='link-light h5' href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");                      
                      out.print("</tr>");
                  }
              } else{
                  ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
                        for (int num = 0; num < lista.size(); num++){
                        out.print("<tr style='background-color:gray'>");
                        out.print("<td align='center' style='color:white'>" + lista.get(num).getCodigo_produto() + "</td>");
                        out.print("<td align='center' style='color:white'>" + lista.get(num).getDescricao_produto() + "</td>");
                        out.print("<td align='center' style='color:white'>" + lista.get(num).getPreco_produto() + "</td>");
                        out.print("<td align='center' style='color:white'><a class='link-light h5' href='alterar.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");
                        out.print("<td align='center' style='color:white'><a class='link-light h5' href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");                      
                        out.print("</tr>");
	                }
	            }  
	            out.print("</table>");
	          }catch(Exception erro){
	              throw new RuntimeException("Erro 10: " + erro);
	          }
        	%>
        <br/>
        </div>
    </body>
    <footer>
        <div class="container p-3 my3 bg-dark text-light">
            <h6 class="text-center">Copyright 2021 - Brunowvisk</h6>
        </div>
    </footer>
</html>
