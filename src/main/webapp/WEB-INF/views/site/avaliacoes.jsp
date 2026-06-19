<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Avaliações</title>

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
	width:90%;
	margin:40px auto;
}

.card{
	width:320px;
	display:inline-block;
	vertical-align:top;
	margin:15px;
	background:white;
	border-radius:10px;
	box-shadow:0 0 10px rgba(0,0,0,.2);
	padding:20px;
	text-align:center;
}

.card img{
	width:90px;
	height:90px;
	border-radius:50%;
	object-fit:cover;
	margin-bottom:15px;
}

.nome{
	font-size:20px;
	font-weight:bold;
	color:#2c3e50;
}

.estrelas{
	color:#f1c40f;
	font-size:22px;
	margin:10px 0;
}

.comentario{
	text-align:justify;
	line-height:24px;
	color:#555;
}

.botao{
	display:block;
	width:180px;
	margin:40px auto;
	text-align:center;
	background:#2c3e50;
	color:white;
	padding:12px;
	text-decoration:none;
	border-radius:5px;
}

</style>

</head>

<body>

<header>

<h1>Avaliações dos Clientes</h1>

<p>Confira a opinião de quem já utilizou nossos serviços.</p>

</header>

<div class="container">

<div class="card">

<img src="imagens/cliente1.jpg">

<div class="nome">Mariana Silva</div>

<div class="estrelas">
★★★★★
</div>

<div class="comentario">

Excelente atendimento. O serviço foi realizado com muita qualidade e dentro do prazo combinado.

</div>

</div>

<div class="card">

<img src="imagens/cliente2.jpg">

<div class="nome">Carlos Oliveira</div>

<div class="estrelas">
★★★★★
</div>

<div class="comentario">

Profissional muito atencioso e organizado. Recomendo para qualquer pessoa que procura um serviço de confiança.

</div>

</div>

<div class="card">

<img src="imagens/cliente3.jpg">

<div class="nome">Fernanda Costa</div>

<div class="estrelas">
★★★★★
</div>

<div class="comentario">

Fiquei muito satisfeita com o resultado. Atendimento rápido, preço justo e excelente qualidade.

</div>

</div>

</div>

<a class="botao" href="<%=request.getContextPath()%>/">

Voltar para a Página Inicial

</a>

</body>
</html>