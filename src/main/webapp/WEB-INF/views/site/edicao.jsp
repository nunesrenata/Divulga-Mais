<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="br.com.renata.entities.Servico"%>

<%
Servico servico = (Servico) request.getAttribute("servico");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Serviço</title>

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

</style>

</head>

<body>

<header>

<h1>Editar Serviço</h1>

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

<form action="<%=request.getContextPath()%>/agenda/editar-servico" method="post">

<input
type="hidden"
name="idServico"
value="<%=servico.getIdServico()%>">

<label>Nome do Serviço</label>

<input
type="text"
name="nome_servico"
value="<%=servico.getNome()%>"
required>

<label>Descrição</label>

<textarea
name="descricao_servico"
rows="5"
required><%=servico.getDescricao()%></textarea>

<label>Valor</label>

<input
type="number"
step="0.01"
name="valor_servico"
value="<%=servico.getValor()%>"
required>

<button type="submit">

Salvar Alterações

</button>

</form>

<br>

<a href="<%=request.getContextPath()%>/agenda/consulta">

Voltar para Consulta

</a>

</div>

</body>
</html>