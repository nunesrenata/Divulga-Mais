<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Área Administrativa</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="login-body">

    <div class="login-container">
        
        <div class="login-header">
            <h2>Área Administrativa</h2>
            <p>Faça login para gerenciar o sistema</p>
        </div>

        <c:if test="${not empty mensagem}">
            <div class="alert alert-danger" style="margin-bottom: 20px;">
                <i class="fa-solid fa-circle-exclamation"></i> ${mensagem}
            </div>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="post">
            
            <div class="form-group">
                <label for="email"><i class="fa-solid fa-envelope"></i> E-mail</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Digite seu e-mail" required>
            </div>

            <div class="form-group">
                <label for="senha"><i class="fa-solid fa-lock"></i> Senha</label>
                <input type="password" id="senha" name="senha" class="form-control" placeholder="Digite sua senha" required>
            </div>

            <button type="submit" class="botao" style="width: 100%; margin-top: 15px;">
                Entrar <i class="fa-solid fa-right-to-bracket" style="margin-left: 8px;"></i>
            </button>

        </form>

        <div style="text-align: center;">
            <a href="${pageContext.request.contextPath}/" class="login-link-voltar">
                <i class="fa-solid fa-arrow-left"></i> Voltar para o site
            </a>
        </div>

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