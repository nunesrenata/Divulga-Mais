<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contato</title>

<style>

body{
	margin:0;
	font-family:Arial;
	background:#f4f4f4;
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

<h1>Entre em Contato</h1>

</header>

<div class="container">

<% if(request.getAttribute("mensagem_sucesso") != null){ %>

<p class="sucesso">

<%=request.getAttribute("mensagem_sucesso") %>

</p>

<% } %>

<% if(request.getAttribute("mensagem_erro") != null){ %>

<p class="erro">

<%=request.getAttribute("mensagem_erro") %>

</p>

<% } %>

<form action="<%=request.getContextPath()%>/contato" method="post">

<label>Nome</label>

<input
type="text"
name="nome"
required>

<label>E-mail</label>

<input
type="email"
name="email"
required>

<label>Mensagem</label>

<textarea
name="mensagem"
rows="6"
required></textarea>

<button type="submit">

Enviar Mensagem

</button>

</form>

<br>

<a href="<%=request.getContextPath()%>/">

← Voltar para a página inicial

</a>

</div>

</body>

</html>