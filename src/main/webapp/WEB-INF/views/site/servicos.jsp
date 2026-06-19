<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nossos Serviços</title>

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
    display:flex;
    justify-content:center;
    flex-wrap:wrap;
}

.card{
    width:300px;
    background:white;
    margin:15px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,.2);
    overflow:hidden;
}

.card img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.card h3{
    text-align:center;
    color:#2c3e50;
    margin-top:15px;
}

.card p{
    padding:0 20px;
    text-align:justify;
}

.valor{
    font-size:22px;
    font-weight:bold;
    color:#27ae60;
    text-align:center;
    margin:20px 0;
}

.botao{
    display:block;
    width:180px;
    margin:40px auto;
    padding:12px;
    background:#2c3e50;
    color:white;
    text-decoration:none;
    text-align:center;
    border-radius:5px;
}

.botao:hover{
    background:#34495e;
}

</style>

</head>

<body>

<header>

<h1>Serviços Oferecidos</h1>

<p>Conheça alguns dos serviços disponíveis.</p>

</header>

<div class="container">

<c:forEach var="s" items="${servicos}">

    <div class="card">

        <img src="<%=request.getContextPath()%>/imagens/servico1.jpg">

        <h3>${s.nome}</h3>

        <p>${s.descricao}</p>

        <p class="valor">
            R$
            <fmt:formatNumber value="${s.valor}" pattern="#,##0.00"/>
        </p>

    </div>

</c:forEach>

</div>

<a class="botao" href="<%=request.getContextPath()%>/">

Voltar para Home

</a>

</body>
</html>