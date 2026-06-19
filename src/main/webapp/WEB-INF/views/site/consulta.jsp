<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consulta de Serviços</title>

<style>

body{
	font-family:Arial, Helvetica, sans-serif;
	background:#f4f4f4;
	margin:0;
}

header{
	background:#2c3e50;
	color:white;
	padding:20px;
	text-align:center;
}

.container{
	width:90%;
	margin:40px auto;
}

table{
	width:100%;
	border-collapse:collapse;
	background:white;
	box-shadow:0 0 10px rgba(0,0,0,.2);
}

th{
	background:#2c3e50;
	color:white;
	padding:15px;
}

td{
	padding:12px;
	text-align:center;
	border-bottom:1px solid #ddd;
}

tr:hover{
	background:#f8f8f8;
}

a{
	text-decoration:none;
	font-weight:bold;
	color:#2c3e50;
}

.sucesso{
	color:green;
	font-weight:bold;
	margin-bottom:20px;
}

.erro{
	color:red;
	font-weight:bold;
	margin-bottom:20px;
}

.botao{
	display:inline-block;
	padding:10px 20px;
	background:#2c3e50;
	color:white;
	border-radius:5px;
	margin-bottom:20px;
}

</style>

</head>

<body>

<header>

<h1>Serviços Cadastrados</h1>

</header>

<div class="container">

<c:if test="${not empty mensagem_sucesso}">
	<p class="sucesso">${mensagem_sucesso}</p>
</c:if>

<c:if test="${not empty mensagem_erro}">
	<p class="erro">${mensagem_erro}</p>
</c:if>

<a class="botao"
href="${pageContext.request.contextPath}/servicos/cadastro">

Novo Serviço

</a>

<table>

<tr>

<th>ID</th>

<th>Nome</th>

<th>Descrição</th>

<th>Valor</th>

<th>Ações</th>

</tr>

<c:forEach items="${lista_servicos}" var="servico">

<tr>

<td>${servico.idServico}</td>

<td>${servico.nome}</td>

<td>${servico.descricao}</td>

<td>R$ ${servico.valor}</td>

<td>

<a href="${pageContext.request.contextPath}/agenda/edicao?idServico=${servico.idServico}">

Editar

</a>

|

<a href="${pageContext.request.contextPath}/servico/exclusao?idServico=${servico.idServico}"
onclick="return confirm('Deseja realmente excluir este serviço?');">

Excluir

</a>

</td>

</tr>

</c:forEach>

</table>

<br><br>

<a href="${pageContext.request.contextPath}/">

← Voltar para a página inicial

</a>

</div>

</body>
</html>