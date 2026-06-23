<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Divulga Mais</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css?v=9.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>

    <jsp:include page="/WEB-INF/views/components/navbar.jsp" />

    <div class="banner-hero">
        <div class="hero-conteudo">
            <h1>Bem-vindo ao Divulga Mais!</h1>
            <p>Conheça nossos serviços especializados e entre em contato para impulsionar os seus resultados com o melhor atendimento personalizado do mercado.</p>
            
            <div class="hero-badges">
                <span class="badge-item"><i class="fa-solid fa-award"></i> Qualidade Garantida</span>
                <span class="badge-item"><i class="fa-solid fa-user-check"></i> Foco no Cliente</span>
                <span class="badge-item"><i class="fa-solid fa-bolt"></i> Entrega Rápida</span>
                <span class="badge-item"><i class="fa-solid fa-headset"></i> Suporte Premium</span>
            </div>
        </div>
        
        <div class="hero-imagem-wrapper">
            <div class="hero-grafico-abstract">
                <div class="circulo-decorativo c1"></div>
                <div class="circulo-decorativo c2"></div>
                
                <div class="card-mockup-floating">
                    <div class="mockup-icon-box">
                        <i class="fa-solid fa-chart-line" style="color: #3498db; font-size: 2rem;"></i>
                    </div>
                    <h4>Performance & Crescimento</h4>
                    <p>Seu negócio em outro nível</p>
                    <div class="mockup-barrinhas">
                        <div class="barrinha" style="width: 80%; background-color: #2ecc71;"></div>
                        <div class="barrinha" style="width: 60%; background-color: #3498db;"></div>
                    </div>
                </div>

                <div class="card-mockup-floating card-flutuante-2">
                    <div class="mockup-icon-box" style="background-color: #fdf2f8;">
                        <i class="fa-solid fa-wand-magic-sparkles" style="color: #e84393; font-size: 1.5rem;"></i>
                    </div>
                    <h4>Design Moderno</h4>
                    <p>Foco na experiência do usuário</p>
                </div>

                <div class="card-mockup-floating card-flutuante-3">
                    <div class="mockup-icon-box" style="background-color: #fffbeb;">
                        <i class="fa-solid fa-shield-halved" style="color: #f1c40f; font-size: 1.5rem;"></i>
                    </div>
                    <h4>Segurança Total</h4>
                    <p>Seus dados 100% protegidos</p>
                </div>
            </div>
        </div>
    </div>

    <section id="sobre">
        <h2>Sobre o Profissional</h2>
        <div class="sobre-wrapper">
            <div class="sobre-foto-container">
                <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Profissional trabalhando" class="foto-sobre">
            </div>
            <div class="sobre-textos">
                <p>Sou um profissional autônomo especializado em oferecer serviços com qualidade, comprometimento e atendimento personalizado.</p>
                <p>Com vasta experiência no mercado digital, meu principal objetivo é transformar a sua visão em realidade. Aplico as melhores e mais recentes práticas de desenvolvimento para garantir que o seu projeto não seja apenas visualmente atrativo, mas altamente funcional, escalável e focado em gerar conversões.</p>
                <div class="sobre-mini-cards">
                    <div class="mini-card"><i class="fa-solid fa-laptop-code"></i><span>Soluções Inovadoras</span></div>
                    <div class="mini-card"><i class="fa-solid fa-bullseye"></i><span>Foco em Resultados</span></div>
                    <div class="mini-card"><i class="fa-solid fa-handshake"></i><span>Parceria Transparente</span></div>
                </div>
            </div>
        </div>
    </section>

    <section id="diferenciais" style="padding: 60px 20px; background: var(--bg-total, transparent);">
        <h2>Por Que Nos Escolher?</h2>
        <p style="text-align: center; color: var(--text-muted); margin-bottom: 40px;">Entenda nossos pilares para entregar o melhor resultado para o seu negócio.</p>
        <div class="grid-diferenciais">
            <div class="card-diferencial"><div class="icon-box"><i class="fa-solid fa-bolt"></i></div><h3>Alta Performance</h3><p>Otimização severa de processos e carregamentos.</p></div>
            <div class="card-diferencial"><div class="icon-box"><i class="fa-solid fa-shield-halved"></i></div><h3>Segurança Ponta a Ponta</h3><p>Protocolos rígidos e boas práticas de desenvolvimento.</p></div>
            <div class="card-diferencial"><div class="icon-box"><i class="fa-solid fa-headset"></i></div><h3>Suporte Dedicado</h3><p>Acompanhamento contínuo e canais abertos.</p></div>
        </div>
    </section>

    <section class="secao-metricas">
        <div class="metrica-item"><span class="metrica-numero" data-target="150" data-suffix="+">0</span><span class="metrica-texto">Projetos Entregues</span></div>
        <div class="metrica-item"><span class="metrica-numero" data-target="99.2" data-suffix="%">0</span><span class="metrica-texto">Satisfação</span></div>
        <div class="metrica-item"><span class="metrica-numero" data-target="5" data-suffix="+">0</span><span class="metrica-texto">Anos de Experiência</span></div>
        <div class="metrica-item"><span class="metrica-numero" data-target="24" data-suffix="/7">0</span><span class="metrica-texto">Monitoramento</span></div>
    </section>

    <section id="servicos">
        <h2>Serviços</h2>
        <div class="cards">
            <c:forEach var="s" items="${servicos}">
                <div class="card">
                    <img src="${not empty s.foto ? s.foto : 'https://placehold.co/600x400?text=Sem+Imagem'}" alt="${s.nome}">
                    <h3>${s.nome}</h3>
                    <p>${s.descricao}</p>
                    <div class="price"><fmt:setLocale value="pt_BR"/><fmt:formatNumber value="${s.valor}" type="currency"/></div>
                </div>
            </c:forEach>
        </div>
        <div style="text-align: center; margin-top: 50px;">
            <a href="${pageContext.request.contextPath}/site/servicos" class="botao" style="background-color: var(--accent-color); padding: 14px 35px; font-size: 1.05rem; box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);">
                Veja mais sobre os serviços <i class="fa-solid fa-arrow-right" style="margin-left: 8px;"></i>
            </a>
        </div>
    </section>

    <section id="avaliacoes">
        <h2>Avaliações dos Clientes</h2>
        <div class="cards">
            <c:forEach var="a" items="${avaliacoes}">
                <div class="card">
                    <h3>${a.nome}</h3>
                    <p class="estrelas-display" style="font-size: 1.5rem; letter-spacing: 2px;">
                        <c:choose>
                            <c:when test="${a.nota==1}">⭐</c:when><c:when test="${a.nota==2}">⭐⭐</c:when>
                            <c:when test="${a.nota==3}">⭐⭐⭐</c:when><c:when test="${a.nota==4}">⭐⭐⭐⭐</c:when>
                            <c:otherwise>⭐⭐⭐⭐⭐</c:otherwise>
                        </c:choose>
                    </p>
                    <p>${a.comentario}</p>
                </div>
            </c:forEach>
        </div>
        <hr style="margin: 60px 0; border: 0; border-top: 1px solid var(--border-color);">
        <h2>Deixe sua avaliação</h2>
        
        <c:if test="${not empty mensagem_sucesso_avaliacao}">
            <div class="alert alert-success">${mensagem_sucesso_avaliacao}</div><c:remove var="mensagem_sucesso_avaliacao" scope="session" />
        </c:if>
        <c:if test="${not empty mensagem_erro_avaliacao}">
            <div class="alert alert-danger">${mensagem_erro_avaliacao}</div><c:remove var="mensagem_erro_avaliacao" scope="session" />
        </c:if>

        <div class="form-container">
            <form action="${pageContext.request.contextPath}/avaliacao" method="post" accept-charset="UTF-8">
                <div class="form-group"><label>Nome</label><input type="text" name="nome" class="form-control" required></div>
                <div class="form-group"><label>Telefone</label><input type="text" name="telefone" class="form-control"></div>
                <div class="form-group">
                    <label>Nota</label>
                    <div class="estrelas">
                        <input type="radio" id="e5" name="nota" value="5" required><label for="e5">★</label>
                        <input type="radio" id="e4" name="nota" value="4"><label for="e4">★</label>
                        <input type="radio" id="e3" name="nota" value="3"><label for="e3">★</label>
                        <input type="radio" id="e2" name="nota" value="2"><label for="e2">★</label>
                        <input type="radio" id="e1" name="nota" value="1"><label for="e1">★</label>
                    </div>
                </div>
                <div class="form-group"><label>Comentário</label><textarea name="comentario" rows="5" class="form-control" required></textarea></div>
                <div style="text-align: center; margin-top: 30px;"><button type="submit" class="botao">Enviar Avaliação</button></div>
            </form>
        </div>
    </section>

    <section id="faq" style="padding: 60px 20px;">
        <h2>Perguntas Frequentes</h2>
        <p style="text-align: center; color: var(--text-muted); margin-bottom: 40px;">Respostas rápidas para as principais dúvidas sobre nossa dinâmica de atuação.</p>
        
        <div class="faq-container">
            <details class="faq-item">
                <summary>Como funciona o processo de contratação?</summary>
                <div class="faq-content">
                    <p>Após preencher o formulário de contato, realizamos uma reunião de alinhamento para entender seu escopo, gerar uma proposta comercial formalizada e iniciar o cronograma após aprovação.</p>
                </div>
            </details>
            
            <details class="faq-item">
                <summary>Quais são as formas de pagamento aceitas?</summary>
                <div class="faq-content">
                    <p>Trabalhamos com faturamento via PIX, transferências bancárias ou parcelamento estruturado via cartão de crédito, dependendo da complexidade e duração do projeto acordado.</p>
                </div>
            </details>

            <details class="faq-item">
                <summary>Existe garantia ou suporte após a entrega do serviço?</summary>
                <div class="faq-content">
                    <p>Sim! Todos os serviços contam com uma janela padrão de 30 dias de suporte técnico assistido para correções, ajustes estruturais e garantia de estabilidade operacional técnica.</p>
                </div>
            </details>
        </div>
    </section>

    <section id="contato">
        <h2>Entre em Contato</h2>
        <p style="text-align: center; margin-bottom: 30px;">Preencha o formulário abaixo e entraremos em contato o mais breve possível.</p>

        <c:if test="${not empty mensagem_sucesso_contato}">
            <div class="alert alert-success">
                ${mensagem_sucesso_contato}
            </div>
            <c:remove var="mensagem_sucesso_contato" scope="session" />
        </c:if>

        <c:if test="${not empty mensagem_erro_contato}">
            <div class="alert alert-danger">
                ${mensagem_erro_contato}
            </div>
            <c:remove var="mensagem_erro_contato" scope="session" />
        </c:if>

        <div class="form-container">
            <form action="${pageContext.request.contextPath}/contato" method="post" accept-charset="UTF-8">
                <div class="form-group">
                    <label for="nomeContato">Nome</label>
                    <input type="text" id="nomeContato" name="nome" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="emailContato">Email</label>
                    <input type="email" id="emailContato" name="email" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="telContato">Telefone</label>
                    <input type="text" id="telContato" name="telefone" class="form-control">
                </div>

                <div class="form-group">
                    <label for="mensagem">Mensagem</label>
                    <textarea id="mensagem" name="mensagem" rows="6" class="form-control"></textarea>
                </div>

                <div style="text-align: center; margin-top: 30px;">
                    <button type="submit" class="botao">Enviar Mensagem</button>
                </div>
            </form>
        </div>
    </section>

    <jsp:include page="/WEB-INF/views/components/footer.jsp" />

    <div class="chat-bot-container">
        <div class="chat-window" id="chatWindow">
            <div class="chat-header">
                <div class="chat-title"><i class="fa-solid fa-robot"></i> Assistente IA</div>
                <button class="chat-close" id="chatCloseBtn"><i class="fa-solid fa-xmark"></i></button>
            </div>
            <div class="chat-body" id="chatBody">
                <div class="chat-message bot"><p>Olá! Sou a inteligência artificial do Divulga Mais. Como posso ajudar a escalar seu projeto hoje?</p></div>
            </div>
            <div class="chat-footer">
                <input type="text" id="chatInput" placeholder="Digite sua dúvida..." autocomplete="off">
                <button id="chatSendBtn"><i class="fa-solid fa-paper-plane"></i></button>
            </div>
        </div>
        <button class="chat-trigger-btn" id="chatTriggerBtn"><i class="fa-solid fa-message"></i></button>
    </div>

    <div style="position: fixed; bottom: 25px; right: 25px; background: var(--surface-color); padding: 12px 18px; border-radius: 12px; box-shadow: 0 5px 15px rgba(0,0,0,0.2); z-index: 1000; display: flex; flex-direction: column; align-items: center; border: 1px solid var(--border-color);">
        <span style="color: var(--text-main); font-size: 0.8rem; font-weight: bold; margin-bottom: 8px;"><i class="fa-solid fa-moon" style="color: #f1c40f;"></i> Modo Noite</span>
        <label class="theme-switch" for="checkbox-tema" style="margin: 0;"><input type="checkbox" id="checkbox-tema" /><div class="slider round"></div></label>
    </div>

    <script>
        const toggleSwitch = document.querySelector('#checkbox-tema');
        const ativarModoEscuro = () => {
            if (!document.getElementById('dark-mode-stylesheet')) {
                const link = document.createElement('link'); link.id = 'dark-mode-stylesheet'; link.rel = 'stylesheet';
                link.href = '${pageContext.request.contextPath}/resources/dark.css?v=' + new Date().getTime();
                document.head.appendChild(link);
            }
        }
        const desativarModoEscuro = () => { const el = document.getElementById('dark-mode-stylesheet'); if (el) el.remove(); }
        if (localStorage.getItem('theme') === 'dark') { toggleSwitch.checked = true; ativarModoEscuro(); }
        toggleSwitch.addEventListener('change', (e) => {
            if (e.target.checked) { ativarModoEscuro(); localStorage.setItem('theme', 'dark'); } 
            else { desativarModoEscuro(); localStorage.setItem('theme', 'light'); }
        });

        document.addEventListener("DOMContentLoaded", function() {
            const counters = document.querySelectorAll('.metrica-numero');
            const observer = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) { 
                        counters.forEach(counter => {
                            const target = parseFloat(counter.getAttribute('data-target'));
                            const suffix = counter.getAttribute('data-suffix');
                            const isFloat = counter.getAttribute('data-target').includes('.');
                            const updateCount = () => {
                                const currentCount = parseFloat(counter.innerText.replace(suffix, '')) || 0;
                                const increment = target / 60;
                                if (currentCount < target) {
                                    let newCount = currentCount + increment;
                                    if(newCount > target) newCount = target; 
                                    counter.innerText = (isFloat ? newCount.toFixed(1) : Math.ceil(newCount)) + suffix;
                                    setTimeout(updateCount, 30);
                                } else { counter.innerText = target + suffix; }
                            };
                            updateCount();
                        });
                        observer.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.5 }); 
            const secaoMetricas = document.querySelector('.secao-metricas');
            if (secaoMetricas) observer.observe(secaoMetricas);
        });

        const chatTriggerBtn = document.getElementById('chatTriggerBtn');
        const chatWindow = document.getElementById('chatWindow');
        const chatCloseBtn = document.getElementById('chatCloseBtn');
        const chatSendBtn = document.getElementById('chatSendBtn');
        const chatInput = document.getElementById('chatInput');
        const chatBody = document.getElementById('chatBody');

        chatTriggerBtn.addEventListener('click', () => chatWindow.classList.add('active'));
        chatCloseBtn.addEventListener('click', () => chatWindow.classList.remove('active'));

        const iaResponses = [
            "Ótima pergunta! Para responder isso em detalhes, recomendo acessar nossa aba de Serviços.",
            "Nossos projetos são focados em escalar negócios digitais. Qual sua maior urgência hoje?",
            "Entendi! O ideal para o seu caso é agendarmos uma consultoria rápida. O que acha?",
            "Nossa stack principal utiliza tecnologias modernas para garantir máxima estabilidade e performance.",
            "O orçamento depende do escopo, mas garantimos o melhor custo-benefício. Vamos conversar via formulário de contato!"
        ];

        function addMessage(text, sender) {
            const msgDiv = document.createElement('div');
            msgDiv.classList.add('chat-message', sender);
            
            msgDiv.innerHTML = '<p>' + text + '</p>';
            
            chatBody.appendChild(msgDiv);
            chatBody.scrollTop = chatBody.scrollHeight;
        }

        function showTypingIndicator() {
            const typingDiv = document.createElement('div');
            typingDiv.classList.add('chat-message', 'bot', 'typing-indicator-msg');
            typingDiv.innerHTML = '<div class="typing-indicator"><span></span><span></span><span></span></div>';
            chatBody.appendChild(typingDiv);
            chatBody.scrollTop = chatBody.scrollHeight;
            return typingDiv;
        }

        function handleSend() {
            const text = chatInput.value.trim();
            if (text === '') return;
            addMessage(text, 'user');
            chatInput.value = '';
            const typingElement = showTypingIndicator();
            setTimeout(() => {
                typingElement.remove();
                addMessage(iaResponses[Math.floor(Math.random() * iaResponses.length)], 'bot');
            }, 1200); 
        }

        chatSendBtn.addEventListener('click', handleSend);
        chatInput.addEventListener('keypress', (e) => { if (e.key === 'Enter') handleSend(); });
    </script>
</body>
</html>