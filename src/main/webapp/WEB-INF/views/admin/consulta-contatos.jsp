<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mensagens Recebidas - Painel Administrativo</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin.css?v=2.0">
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
                    <a href="${pageContext.request.contextPath}/contatos" class="active">
                        <i class="fa-solid fa-envelope"></i> Mensagens
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/avaliacoes">
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
                <h2>Caixa de Mensagens</h2>
            </div>

            <div class="admin-table-container">
                <table class="admin-table">
                    <thead>
                        <tr>
                            <th style="width: 60px;">ID</th>
                            <th style="width: 160px;">Nome</th>
                            <th style="width: 180px;">Contato</th>
                            <th>Mensagem</th>
                            <th style="width: 120px;">Status</th>
                            <th style="width: 150px;">Ação</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="c" items="${contatos}">
                            
                            <tr class="<c:if test='${c.respondido}'>linha-apagada</c:if>">
                                
                                <td style="font-weight: bold; color: var(--text-muted);">#${c.idContato}</td>
                                <td>${c.nome}</td>
                                <td>
                                    <div style="margin-bottom: 5px;">
                                        <i class="fa-solid fa-envelope" style="color: var(--accent-color); margin-right: 5px;"></i>
                                        <a href="mailto:${c.email}" style="color: var(--text-main); text-decoration: none;">${c.email}</a>
                                    </div>
                                    <div>
                                        <i class="fa-solid fa-phone" style="color: #27ae60; margin-right: 5px;"></i>
                                        <c:choose>
                                            <c:when test="${not empty c.telefone}">${c.telefone}</c:when>
                                            <c:otherwise><span style="color: #aaa; font-size: 0.9em;">Não informado</span></c:otherwise>
                                        </c:choose>
                                    </div>
                                </td>
                                <td style="vertical-align: top; line-height: 1.5;">
                                    ${c.mensagem}
                                </td>
                                
                                <td>
                                    <c:choose>
                                        <c:when test="${c.respondido}">
                                            <span class="badge-status respondido">Respondido</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge-status pendente">Pendente</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                
                                <td>
                                    <c:choose>
                                        <c:when test="${c.respondido}">
                                            <a href="${pageContext.request.contextPath}/alterarStatusContato?id=${c.idContato}&status=false" class="btn-status reverter">
                                                <i class="fa-solid fa-rotate-left"></i> Desmarcar
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${pageContext.request.contextPath}/alterarStatusContato?id=${c.idContato}&status=true" class="btn-status confirmar">
                                                <i class="fa-solid fa-check"></i> Responder
                                            </a>
                                        </c:otherwise>
                                    </c:choose>
                                </td>

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
                link.href = '${pageContext.request.contextPath}/resources/dark.css?v=' + new Date().getTime();
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