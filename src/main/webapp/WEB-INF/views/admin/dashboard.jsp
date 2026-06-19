<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Painel Administrativo</title>

<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background: #f4f6f9;
}

header {
	background: #2c3e50;
	color: white;
	padding: 20px;
	text-align: center;
}

.container {
	width: 90%;
	margin: 40px auto;
}

h2 {
	text-align: center;
	color: #2c3e50;
	margin-bottom: 40px;
}

.cards {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 30px;
}

.card {
	width: 250px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	padding: 30px;
	text-align: center;
}

.card h3 {
	color: #2c3e50;
}

.botao {
	display: inline-block;
	margin-top: 20px;
	background: #2c3e50;
	color: white;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 5px;
}

.botao:hover {
	background: #1a252f;
}
</style>

</head>
<body>

	<header>

		<h1>Divulga Mais</h1>

		<p>Painel Administrativo</p>

	</header>

	<div class="container">

		<h2>Bem-vindo à Área Administrativa</h2>

		<div class="cards">

			<div class="card">

				<h3>Cadastrar Serviço</h3>

				<p>Cadastre novos serviços oferecidos.</p>

				<a class="botao"
					href="<%=request.getContextPath()%>/servicos/cadastro"> Acessar
				</a>

			</div>

			<div class="card">

				<h3>Consultar Serviços</h3>

				<p>Visualize todos os serviços cadastrados.</p>

				<a class="botao"
					href="<%=request.getContextPath()%>/servicos/consulta">

					Acessar </a>

			</div>

			<div class="card">

				<h3>Contatos</h3>

				<p>Veja todas as mensagens enviadas.</p>

				<a class="botao" href="<%=request.getContextPath()%>/contato">
					Acessar </a>

			</div>

			<div class="card">

				<h3>Avaliações</h3>

				<p>Visualize as avaliações dos clientes.</p>

				<a class="botao" href="<%=request.getContextPath()%>/avaliacoes">
					Acessar </a>

			</div>

		</div>

		<div style="text-align: center; margin-top: 50px;">

			<a class="botao" href="<%=request.getContextPath()%>/"> Voltar ao
				Site </a>

		</div>

	</div>

</body>
</html>