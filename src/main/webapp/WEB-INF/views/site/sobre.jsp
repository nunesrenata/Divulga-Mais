<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sobre o Profissional</title>

<style>

body{
	margin:0;
	font-family:Arial, Helvetica, sans-serif;
	background:#f5f5f5;
}

header{
	background:#2c3e50;
	color:white;
	text-align:center;
	padding:20px;
}

.container{
	width:80%;
	margin:40px auto;
	background:white;
	padding:30px;
	border-radius:10px;
	box-shadow:0 0 10px rgba(0,0,0,.2);
}

.foto{
	text-align:center;
	margin-bottom:30px;
}

.foto img{
	width:250px;
	height:250px;
	border-radius:50%;
	object-fit:cover;
	border:5px solid #2c3e50;
}

h2{
	color:#2c3e50;
}

p{
	font-size:18px;
	line-height:30px;
	text-align:justify;
}

.botao{
	display:inline-block;
	margin-top:20px;
	padding:12px 25px;
	background:#2c3e50;
	color:white;
	text-decoration:none;
	border-radius:5px;
}

</style>

</head>

<body>

<header>

<h1>Sobre o Profissional</h1>

</header>

<div class="container">

<div class="foto">

<img src="imagens/profissional.jpg">

</div>

<h2>Quem Somos</h2>

<p>

A Divulga Mais nasceu com o objetivo de oferecer um atendimento de qualidade,
transparência e compromisso aos clientes. Nosso foco é apresentar soluções
personalizadas, buscando sempre atender às necessidades de cada pessoa com
profissionalismo e dedicação.

</p>

<p>

Valorizamos o bom atendimento, a confiança e a satisfação dos clientes,
oferecendo serviços realizados com responsabilidade e qualidade.

</p>

<p>

Nosso compromisso é construir relacionamentos duradouros por meio de um serviço
eficiente e de excelência.

</p>

<a class="botao" href="<%=request.getContextPath()%>/">

Voltar para a Página Inicial

</a>

</div>

</body>
</html>