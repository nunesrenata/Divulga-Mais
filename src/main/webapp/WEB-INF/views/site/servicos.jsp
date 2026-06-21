<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>Nossos Serviços em Detalhes</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css?v=99.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>

    <jsp:include page="/WEB-INF/views/components/navbar.jsp" />

    <div class="banner-pagina-interna">
        <div class="decor-luz luz-1"></div>
        <div class="decor-luz luz-2"></div>
        
        <div class="banner-pagina-interna-conteudo">
            <h1><i class="fa-solid fa-briefcase"></i> Serviços Oferecidos</h1>
            <p>Entenda em detalhes o que cada opção oferece e encontre a solução ideal para decolar o seu projeto.</p>
        </div>
    </div>

    <section class="servicos-detalhados-container">
        <c:forEach var="s" items="${servicos}">
            
            <div class="servico-detalhe-row">
                <div class="servico-imagem">
                    <c:choose>
                        <c:when test="${not empty s.foto}">
                            <img src="${s.foto}" alt="${s.nome}">
                        </c:when>
                        <c:otherwise>
                            <img src="https://placehold.co/800x600?text=Sem+Imagem" alt="Sem imagem">
                        </c:otherwise>
                    </c:choose>
                </div>
                
                <div class="servico-info">
                    <h2>${s.nome}</h2>
                    <p class="desc">${s.descricao}</p>
                    
                    <ul class="caracteristicas-list">
                        <li><i class="fa-solid fa-check-circle"></i> Atendimento 100% personalizado</li>
                        <li><i class="fa-solid fa-check-circle"></i> Foco em qualidade e resultados</li>
                        <li><i class="fa-solid fa-check-circle"></i> Suporte dedicado</li>
                    </ul>
                    
                    <p class="valor-destaque">
                        <fmt:setLocale value="pt_BR"/>
                        <fmt:formatNumber value="${s.valor}" type="currency"/>
                    </p>
                    
                    <a href="${pageContext.request.contextPath}/#contato" class="botao">
                        Solicitar Orçamento
                    </a>
                </div>
            </div>

        </c:forEach>
    </section>

    <div style="text-align: center; margin-bottom: 60px;">
        <a href="${pageContext.request.contextPath}/" class="botao" style="background-color: var(--secondary-color);">
            <i class="fa-solid fa-arrow-left"></i> Voltar para a Home
        </a>
    </div>

    <jsp:include page="/WEB-INF/views/components/footer.jsp" />

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
                link.href = '${pageContext.request.contextPath}/resources/dark.css?v=99.0';
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