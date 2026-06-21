<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar">
    <div class="logo">
        <a href="<%=request.getContextPath()%>/">
            Divulga Mais
        </a>
    </div>

    <ul class="nav-links">
        <li>
            <a href="<%=request.getContextPath()%>/">Home</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/#servicos">Serviços</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/#avaliacoes">Avaliações</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/#contato">Contato</a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/login" class="nav-admin-btn">Área Administrativa</a>
        </li>
    </ul>
</nav>