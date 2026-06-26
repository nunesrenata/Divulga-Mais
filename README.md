# 🚀 Divulga Mais

🌐 **Acesso ao Projeto em Produção:** https://divulga-mais-production.up.railway.app

Sistema web desenvolvido em **Java com Spring MVC**, criado para divulgar serviços profissionais por meio de uma plataforma moderna, intuitiva e responsiva.

O sistema permite que visitantes conheçam os serviços oferecidos, visualizem informações detalhadas, enviem mensagens de contato e registrem avaliações. Já a área administrativa oferece ferramentas completas para gerenciamento do conteúdo do site, proporcionando praticidade na administração dos serviços e no relacionamento com os clientes.

---

# ✨ Funcionalidades

## 👥 Área Pública

A área pública foi desenvolvida para proporcionar uma experiência agradável e interativa aos visitantes.

### Página Inicial

* Navbar responsiva e personalizada
* Hero (banner principal)
* Seção "Sobre o Profissional"
* Seção "Por que nos escolher?"
* Contadores animados de resultados
* Exibição dos serviços cadastrados
* Assistente Virtual (Chatbot IA): interface interativa flutuante para engajamento do usuário, simulando um atendimento para tirar dúvidas rápidas
* Avaliações dos clientes
* Formulário para envio de avaliações com sistema de 1 a 5 estrelas
* Perguntas frequentes (FAQ) com respostas expansíveis
* Formulário de contato
* Rodapé personalizado com links rápidos, informações de contato e redes sociais
* Layout moderno, responsivo e adaptável para diferentes dispositivos
* Animações suaves nos formulários e elementos da interface

### Página de Serviços

* Botão **"Veja mais sobre os serviços"**, direcionando para uma página contendo informações detalhadas de cada serviço
* Exibição dos serviços cadastrados com foto (via URL), nome, descrição e valor formatado
* Assistente Virtual (Chatbot IA) integrado para auxiliar os clientes na escolha do melhor serviço

### Avaliações

Os visitantes podem:

* Informar nome e telefone
* Atribuir nota de 1 a 5 estrelas
* Escrever comentários

Todas as avaliações ficam disponíveis na página inicial.

### Contato

Formulário contendo:

* Nome
* E-mail
* Telefone
* Mensagem

---

# 🔐 Área Administrativa

A área administrativa concentra todas as funcionalidades de gerenciamento do sistema.

## 🔑 Credenciais de Acesso

Para fins de avaliação, utilize as seguintes credenciais:

**E-mail:** `admin@divulgamais.com`

**Senha:** `123456`

---

## Gerenciamento de Serviços

O administrador pode:

* Cadastrar novos serviços
* Consultar todos os serviços cadastrados
* Editar qualquer informação do serviço
* Excluir serviços

Cada serviço possui:

* Nome
* Descrição
* Valor
* URL da imagem

---

## Gerenciamento de Mensagens

Todas as mensagens enviadas pelo formulário de contato ficam registradas no sistema.

O administrador pode:

* Visualizar todas as mensagens
* Identificar mensagens pendentes
* Marcar mensagens como respondidas
* Consultar o histórico de mensagens respondidas

---

## Gerenciamento de Avaliações

O administrador possui uma tela exclusiva para:

* Consultar todas as avaliações recebidas
* Visualizar nome do cliente
* Nota atribuída
* Comentário enviado

---

# 🌙 Modo Escuro

Todo o sistema conta com suporte ao **Dark Mode**, permitindo alternar entre os temas claro e escuro por meio de um botão fixo na interface. A preferência do usuário é armazenada automaticamente.

---

# 🎨 Interface

O projeto foi desenvolvido priorizando uma interface moderna e organizada.

Principais características:

* Layout responsivo (Mobile First)
* Componentização utilizando JSP Include (Navbar e Footer)
* Cards interativos
* Efeitos de hover
* Flexbox
* CSS Grid
* Font Awesome
* Animações em JavaScript

---

# 🛠 Tecnologias Utilizadas

### Backend

* Java
* Spring MVC
* JDBC
* Lombok

### Frontend

* JSP
* JSTL
* HTML5
* CSS3
* JavaScript

### Banco de Dados

* PostgreSQL

### Build e Servidor

* Maven
* Apache Tomcat

### Deploy

* Railway

---

# 💾 Banco de Dados

O sistema utiliza PostgreSQL.

Principais tabelas:

* `usuario`
* `servico`
* `contato`
* `avaliacao`

---

# 📚 Arquitetura

O projeto foi desenvolvido utilizando o padrão **MVC (Model-View-Controller)**, promovendo uma clara separação entre:

* Model
* DAO (Acesso aos Dados)
* Controller
* Views (JSP)

Essa arquitetura facilita a manutenção, organização e escalabilidade da aplicação.

---

# 🎯 Objetivo

Desenvolver uma aplicação web completa para divulgação de serviços profissionais, aplicando conceitos de desenvolvimento Java Web, arquitetura MVC, persistência de dados com PostgreSQL, construção de interfaces modernas, responsividade e deploy em nuvem.

---

# 👩‍💻 Desenvolvido por

**Renata Vitória Pereira**

Projeto desenvolvido para fins acadêmicos.
