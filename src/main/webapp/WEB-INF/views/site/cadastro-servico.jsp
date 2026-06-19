<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Serviços</title>

<style>

body{
	font-family:Arial;
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
	width:60%;
	margin:40px auto;
	background:white;
	padding:30px;
	border-radius:10px;
	box-shadow:0 0 10px rgba(0,0,0,.2);
}

input, textarea{
	width:100%;
	padding:12px;
	margin-top:10px;
	margin-bottom:20px;
	border:1px solid #ccc;
	border-radius:5px;
	font-size:15px;
}

button{
	background:#2c3e50;
	color:white;
	padding:12px 25px;
	border:none;
	border-radius:5px;
	cursor:pointer;
	font-size:16px;
}

button:hover{
	background:#1f2d3d;
}

.sucesso{
	color:green;
	font-weight:bold;
}

.erro{
	color:red;
	font-weight:bold;
}

a{
	text-decoration:none;
	color:#2c3e50;
	font-weight:bold;
}

</style>

</head>

<body>

<header>

<h1>Cadastro de Serviço</h1>

</header>

<div class="container">

<c:if test="${not empty mensagem_sucesso}">
	<p class="sucesso">${mensagem_sucesso}</p>
</c:if>

<c:if test="${not empty mensagem_erro}">
	<p class="erro">${mensagem_erro}</p>
</c:if>

<form action="${pageContext.request.contextPath}/servicos/cadastrar" method="post">

<label>Nome do Serviço</label>

<input
	type="text"
	name="nome_servico"
	required>

<label>Descrição</label>

<textarea
	name="descricao_servico"
	rows="5"
	required></textarea>

<label>Valor (R$)</label>

<input
	type="number"
	step="0.01"
	name="valor_servico"
	required>

<button type="submit">

Cadastrar Serviço

</button>

</form>

<br>

<a href="${pageContext.request.contextPath}/admin">
    ← Voltar para o Painel Administrativo
</a>

</div>

</body>
</html>