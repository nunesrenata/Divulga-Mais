<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel Administrativo - Divulga Mais</title>

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
                    <a href="${pageContext.request.contextPath}/admin" class="active">
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
                <h2>Bem-vindo(a) ao seu Painel</h2>
            </div>

            <div class="cards" style="grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));">
                
                <div class="card">
                    <i class="fa-solid fa-plus-circle" style="font-size: 2.5rem; color: var(--accent-color); margin-bottom: 15px;"></i>
                    <h3>Cadastrar</h3>
                    <p style="font-size: 0.9rem; color: var(--text-muted); margin-bottom: 20px;">Novos serviços</p>
                    <a href="${pageContext.request.contextPath}/servicos/cadastro" class="botao" style="width: 100%;">Acessar</a>
                </div>

                <div class="card">
                    <i class="fa-solid fa-list-check" style="font-size: 2.5rem; color: var(--accent-color); margin-bottom: 15px;"></i>
                    <h3>Consultar</h3>
                    <p style="font-size: 0.9rem; color: var(--text-muted); margin-bottom: 20px;">Gerenciar serviços</p>
                    <a href="${pageContext.request.contextPath}/servicos/consulta" class="botao" style="width: 100%;">Acessar</a>
                </div>

                <div class="card">
                    <i class="fa-solid fa-envelope" style="font-size: 2.5rem; color: var(--accent-color); margin-bottom: 15px;"></i>
                    <h3>Contatos</h3>
                    <p style="font-size: 0.9rem; color: var(--text-muted); margin-bottom: 20px;">Caixa de mensagens</p>
                    <a href="${pageContext.request.contextPath}/contatos" class="botao" style="width: 100%;">Acessar</a>
                </div>

                <div class="card">
                    <i class="fa-solid fa-star" style="font-size: 2.5rem; color: var(--accent-color); margin-bottom: 15px;"></i>
                    <h3>Avaliações</h3>
                    <p style="font-size: 0.9rem; color: var(--text-muted); margin-bottom: 20px;">Feedback dos clientes</p>
                    <a href="${pageContext.request.contextPath}/avaliacoes" class="botao" style="width: 100%;">Acessar</a>
                </div>

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