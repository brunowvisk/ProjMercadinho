<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <header>
        <div class="container p-3 my3 bg-dark text-light text-center">
        <H2>MERCADINHO SENAI</h2> 
        </div>
    </header>
    <body>
        <div class="container bg-secondary text-center">
        <form action="executa_excluir.jsp" method="post">
            <label class="text-light">Codigo: </label><br/>
            <input class="text-center" type="text" name="codigo" value="<%=request.getParameter("codigo")%>"/><br/>
            
            <label class="text-light">Descrição: </label><br/>
            <input class="text-center" type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br/>
            <br>
            <button class="btn btn-dark" type="submit"> OK </button>
            <a class="btn btn-dark" href="index.jsp"> VOLTAR </a><br>
            <br>
        </form>
        </div>
    </body>
    <footer>
        <div class="container p-3 my3 bg-dark text-light">
            <h6 class="text-center">Copyright 2021 - Brunowvisk</h6>
        </div>
    </footer>

