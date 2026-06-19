<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Consultar Serviços</title>

<style>

body{

    font-family:Arial;
    background:#f5f5f5;

}

table{

    width:90%;
    margin:auto;
    border-collapse:collapse;
    background:white;

}

th{

    background:#2c3e50;
    color:white;
    padding:12px;

}

td{

    padding:12px;
    border:1px solid #ddd;

}

h1{

    text-align:center;

}

.botao{

    padding:8px 15px;
    background:#2c3e50;
    color:white;
    text-decoration:none;
    border-radius:5px;

}

</style>

</head>

<body>

<h1>Serviços Cadastrados</h1>

<table>

<tr>

<th>ID</th>

<th>Nome</th>

<th>Descrição</th>

<th>Valor</th>

</tr>

<c:forEach var="s" items="${servicos}">

<tr>

<td>${s.idServico}</td>

<td>${s.nome}</td>

<td>${s.descricao}</td>

<td>R$ ${s.valor}</td>

</tr>

</c:forEach>

</table>

<br>

<div style="text-align:center;">

<a href="${pageContext.request.contextPath}/admin" class="botao">

Voltar ao Painel

</a>

</div>

</body>

</html>