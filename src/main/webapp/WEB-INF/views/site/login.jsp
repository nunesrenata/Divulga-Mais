<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Login</title>

<style>

body{

    margin:0;
    font-family:Arial;
    background:#f4f4f4;

}

.login{

    width:400px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,.2);

}

h2{

    text-align:center;
    color:#2c3e50;

}

input{

    width:100%;
    padding:12px;
    margin:10px 0;
    box-sizing:border-box;

}

button{

    width:100%;
    padding:12px;
    background:#2c3e50;
    color:white;
    border:none;
    cursor:pointer;
    border-radius:5px;

}

button:hover{

    background:#34495e;

}

.erro{

    color:red;
    text-align:center;

}

</style>

</head>

<body>

<div class="login">

<h2>Área Administrativa</h2>

<p class="erro">

${mensagem}

</p>

<form action="<%=request.getContextPath()%>/login" method="post">

<input
type="email"
name="email"
placeholder="E-mail"
required>

<input
type="password"
name="senha"
placeholder="Senha"
required>

<button>

Entrar

</button>

</form>

</div>

</body>

</html>