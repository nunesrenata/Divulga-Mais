<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Avaliações dos Clientes - Painel Administrativo</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>

    <div class="admin-layout">
        
        <aside class="admin-sidebar">
            <div class="admin-sidebar-header">
                <h3>Divulga Mais</h3>
                <p style="color: var(--text-muted); font-size: 0.85rem; margin-top: 5px;">Painel Administrativo</p>
            </div>
            
            <ul class="admin-menu">
                <li>
                    <a href="${pageContext.request.contextPath}/admin">
                        <i class="fa-solid fa-chart-pie"></i> Dashboard
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/servicos/cadastro">
                        <i class="fa-solid fa-plus-circle"></i> Cadastrar Serviço
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/servicos/consulta">
                        <i class="fa-solid fa-list-check"></i> Meus Serviços
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/contatos">
                        <i class="fa-solid fa-envelope"></i> Mensagens
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/avaliacoes" class="active">
                        <i class="fa-solid fa-star"></i> Avaliações
                    </a>
                </li>
                
                <li style="margin-top: 40px; border-top: 1px solid var(--border-color); padding-top: 10px;">
                    <a href="${pageContext.request.contextPath}/">
                        <i class="fa-solid fa-arrow-left"></i> Voltar ao Site
                    </a>
                </li>
            </ul>
        </aside>

        <main class="admin-content">
            
            <div class="admin-header">
                <h2>Avaliações dos Clientes</h2>
            </div>

            <div class="admin-table-container">
                <table class="admin-table">
                    <thead>
                        <tr>
                            <th style="width: 80px;">ID</th>
                            <th style="width: 200px;">Nome</th>
                            <th style="width: 150px;">Telefone</th>
                            <th style="width: 150px;">Nota</th>
                            <th>Comentário</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="a" items="${avaliacoes}">
                            <tr>
                                <td style="font-weight: bold; color: var(--text-muted);">#${a.idAvaliacao}</td>
                                <td>${a.nome}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${not empty a.telefone}">${a.telefone}</c:when>
                                        <c:otherwise><span style="color: #ccc;">Não informado</span></c:otherwise>
                                    </c:choose>
                                </td>
                                <td style="letter-spacing: 2px;">
                                    <c:choose>
                                        <c:when test="${a.nota==1}">⭐</c:when>
                                        <c:when test="${a.nota==2}">⭐⭐</c:when>
                                        <c:when test="${a.nota==3}">⭐⭐⭐</c:when>
                                        <c:when test="${a.nota==4}">⭐⭐⭐⭐</c:when>
                                        <c:otherwise>⭐⭐⭐⭐⭐</c:otherwise>
                                    </c:choose>
                                </td>
                                <td>${a.comentario}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </main>

    </div>

    <div style="position: fixed; bottom: 25px; right: 25px; background: var(--surface-color, #ffffff); padding: 12px 18px; border-radius: 12px; box-shadow: 0 5px 15px rgba(0,0,0,0.2); z-index: 1000; display: flex; flex-direction: column; align-items: center; border: 1px solid var(--border-color, #e0e0e0);">
        <span style="color: var(--text-main, #2c3e50); font-size: 0.8rem; font-weight: bold; margin-bottom: 8px; text-transform: uppercase; letter-spacing: 1px;">
            <i class="fa-solid fa-moon" style="color: #f1c40f; margin-right: 4px;"></i> Modo Noite
        </span>
        <label class="theme-switch" for="checkbox-tema" style="margin: 0;">
            <input type="checkbox" id="checkbox-tema" />
            <div class="slider round"></div>
        </label>
    </div>

    <script>
        const toggleSwitch = document.querySelector('#checkbox-tema');
        const currentTheme = localStorage.getItem('theme');
        
        function ativarModoEscuro() {
            if (!document.getElementById('dark-mode-stylesheet')) {
                const link = document.createElement('link');
                link.id = 'dark-mode-stylesheet';
                link.rel = 'stylesheet';
                link.href = '${pageContext.request.contextPath}/resources/dark.css';
                document.head.appendChild(link);
            }
        }

        function desativarModoEscuro() {
            const darkLink = document.getElementById('dark-mode-stylesheet');
            if (darkLink) {
                darkLink.remove();
            }
        }

        if (currentTheme === 'dark') {
            if(toggleSwitch) toggleSwitch.checked = true;
            ativarModoEscuro();
        }

        if(toggleSwitch) {
            toggleSwitch.addEventListener('change', function(e) {
                if (e.target.checked) {
                    ativarModoEscuro();
                    localStorage.setItem('theme', 'dark'); 
                } else {
                    desativarModoEscuro();
                    localStorage.setItem('theme', 'light'); 
                }    
            });
        }
    </script>

</body>
</html>