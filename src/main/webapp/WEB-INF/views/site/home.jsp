<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Divulga Mais</title>

<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background: #f5f5f5;
}

header {
	background: #2c3e50;
	color: white;
	padding: 20px;
	text-align: center;
}

nav {
	background: #34495e;
	padding: 15px;
	text-align: center;
}

nav a {
	color: white;
	text-decoration: none;
	margin: 15px;
	font-weight: bold;
}

.banner {
	padding: 80px;
	text-align: center;
	background: white;
}

.banner h1 {
	font-size: 42px;
	margin-bottom: 10px;
}

.banner p {
	font-size: 20px;
	color: #666;
}

section {
	padding: 50px;
}

.cards {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
}

.card {
	width: 300px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	margin: 15px;
	padding: 20px;
	text-align: center;
}

.card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	border-radius: 10px;
}

.botao {
	display: inline-block;
	margin-top: 20px;
	background: #2c3e50;
	color: white;
	padding: 12px 25px;
	text-decoration: none;
	border-radius: 5px;
}

footer {
	background: #2c3e50;
	color: white;
	text-align: center;
	padding: 20px;
	margin-top: 40px;
}
</style>

</head>

<body>

	<header>

		<h1>Divulga Mais</h1>

		<p>Seu profissional na internet.</p>

	</header>

	<nav>

		<jsp:include page="../components/navbar.jsp" />

	</nav>

	<div class="banner">

		<h1>Bem-vindo!</h1>

		<p>Conheça nossos serviços e entre em contato.</p>

		<a href="<%=request.getContextPath()%>/site/servicos" class="btn">
			Ver Serviços </a>

	</div>

	<section id="sobre">

		<h2>Sobre o Profissional</h2>

		<p>Sou um profissional autônomo especializado em oferecer serviços
			com qualidade, comprometimento e atendimento personalizado.</p>

	</section>

	<section id="servicos">

		<h2>Serviços</h2>

		<div class="cards">

			<c:forEach var="s" items="${servicos}">

				<div class="card">

					<img src="imagens/servico1.jpg">

					<h3>${s.nome}</h3>

					<p>${s.descricao}</p>

					<h4>R$ ${s.valor}</h4>

				</div>

			</c:forEach>

		</div>
	</section>

	<section id="avaliacoes">

		<h2 style="text-align: center;">Avaliações dos Clientes</h2>

		<c:forEach var="a" items="${avaliacoes}">

			<div class="card" style="margin: 20px auto; width: 70%;">

				<h3>${a.nome}</h3>

				<p>

					<c:choose>

						<c:when test="${a.nota==1}">⭐</c:when>

						<c:when test="${a.nota==2}">⭐⭐</c:when>

						<c:when test="${a.nota==3}">⭐⭐⭐</c:when>

						<c:when test="${a.nota==4}">⭐⭐⭐⭐</c:when>

						<c:otherwise>⭐⭐⭐⭐⭐</c:otherwise>

					</c:choose>

				</p>

				<p>${a.comentario}</p>

			</div>

		</c:forEach>

		<hr>

		<h2 style="text-align: center;">Deixe sua avaliação</h2>

		<form action="<%=request.getContextPath()%>/avaliacao" method="post">

			<table style="margin: auto; width: 500px;">

				<tr>

					<td>Nome</td>

				</tr>

				<tr>

					<td><input type="text" name="nome" required
						style="width: 100%; padding: 10px;"></td>

				</tr>

				<tr>

					<td>Telefone</td>

				</tr>

				<tr>

					<td><input type="text" name="telefone"
						style="width: 100%; padding: 10px;"></td>

				</tr>

				<tr>

					<td>Nota</td>

				</tr>

				<tr>

					<td>

						<style>
.estrelas {
	display: flex;
	flex-direction: row-reverse;
	justify-content: flex-end;
}

.estrelas input {
	display: none;
}

.estrelas label {
	font-size: 35px;
	color: #ccc;
	cursor: pointer;
	transition: .2s;
}

.estrelas input:checked ~ label {
	color: #FFD700;
}

.estrelas label:hover, .estrelas label:hover ~ label {
	color: #FFD700;
}
</style>

						<div class="estrelas">

							<input type="radio" id="estrela5" name="nota" value="5" required>
							<label for="estrela5">★</label> <input type="radio" id="estrela4"
								name="nota" value="4"> <label for="estrela4">★</label> <input
								type="radio" id="estrela3" name="nota" value="3"> <label
								for="estrela3">★</label> <input type="radio" id="estrela2"
								name="nota" value="2"> <label for="estrela2">★</label> <input
								type="radio" id="estrela1" name="nota" value="1"> <label
								for="estrela1">★</label>

						</div>

					</td>

				</tr>

				<tr>

					<td>Comentário</td>

				</tr>

				<tr>

					<td><textarea name="comentario" rows="5"
							style="width: 100%; padding: 10px;" required></textarea></td>

				</tr>

				<tr>

					<td style="text-align: center; padding-top: 20px;"><input
						type="submit" value="Enviar Avaliação" class="botao"
						style="border: none; cursor: pointer;"></td>

				</tr>

			</table>

		</form>

	</section>

	<section id="contato">

		<h2>Entre em Contato</h2>

		<p>Preencha o formulário abaixo e entraremos em contato o mais
			breve possível.</p>

		<%
		if (request.getAttribute("mensagem_sucesso") != null) {
		%>

		<div
			style="width: 500px; margin: 20px auto; padding: 15px; background: #d4edda; color: #155724; border: 1px solid #c3e6cb; border-radius: 8px; text-align: center; font-weight: bold;">

			<%=request.getAttribute("mensagem_sucesso")%>

		</div>

		<%
		}
		%>

		<%
		if (request.getAttribute("mensagem_erro") != null) {
		%>

		<div
			style="width: 500px; margin: 20px auto; padding: 15px; background: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; border-radius: 8px; text-align: center; font-weight: bold;">

			<%=request.getAttribute("mensagem_erro")%>

		</div>

		<%
		}
		%>

		<form action="<%=request.getContextPath()%>/contato" method="post">

			<table style="margin: auto; width: 500px;">

				<tr>
					<td>Nome:</td>
				</tr>

				<tr>
					<td><input type="text" name="nome" required
						style="width: 100%; padding: 10px;"></td>
				</tr>

				<tr>
					<td>Email:</td>
				</tr>

				<tr>
					<td><input type="email" name="email" required
						style="width: 100%; padding: 10px;"></td>
				</tr>

				<tr>
					<td>Telefone:</td>
				</tr>

				<tr>
					<td><input type="text" name="telefone"
						style="width: 100%; padding: 10px;"></td>
				</tr>

				<tr>
					<td>Mensagem:</td>
				</tr>

				<tr>
					<td><textarea name="mensagem" rows="6"
							style="width: 100%; padding: 10px;"></textarea></td>
				</tr>

				<tr>
					<td style="text-align: center; padding-top: 20px;"><input
						type="submit" value="Enviar Mensagem" class="botao"
						style="border: none; cursor: pointer;"></td>
				</tr>

			</table>

		</form>

	</section>

	<footer>

		<p>© 2026 - Divulga Mais</p>

	</footer>

</body>
</html>