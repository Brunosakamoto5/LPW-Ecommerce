<%--
    Document   : index
    Created on : 21/08/2019, 17:26:44
    Author     : gutol
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BrunexBoom</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Produtos</a></li>
      <li><a href="#">Sobre Mim</a></li>
      <li><a href="#">Login</a></li>
    </ul>
  </div>

</nav>
       <h1> Um site by BrunexBoom </h1>

       <form action="AddProduto" method="post">
          Descricao: <input name="descricao">
          Preço: <input name="preco">

          <button type="submit" >OK</button>

          </form>


         <%
            for(int i=0; i<Produto.lista.size(); i++){

               Produto p = Produto.lista.get(i);

               out.println("<pre>" +p.getDescricao() + "</pre>");


            }

          %>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
