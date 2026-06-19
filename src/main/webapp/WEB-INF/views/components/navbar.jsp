<style>

nav{
    background:#2c3e50;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 40px;
    box-shadow:0 2px 8px rgba(0,0,0,.2);
}

.logo a{
    color:white;
    text-decoration:none;
    font-size:28px;
    font-weight:bold;
}

nav ul{
    list-style:none;
    display:flex;
    margin:0;
    padding:0;
}

nav ul li{
    margin-left:25px;
}

nav ul li a{
    color:white;
    text-decoration:none;
    font-size:16px;
    font-weight:bold;
    transition:.3s;
}

nav ul li a:hover{
    color:#f1c40f;
}

</style>

<nav>

    <div class="logo">

        <a href="<%=request.getContextPath()%>/">

        </a>

    </div>

    <ul>

        <li>
            <a href="<%=request.getContextPath()%>/">
                Home
            </a>
        </li>

        <li>
             <a href="#servicos">
                Serviços
            </a>
        </li>

        <li>
            <a href="#avaliacoes">
                Avaliações
            </a>
        </li>

        <li>
            <a href="#contato">
                Contato
            </a>
        </li>

        <li>
            <a href="<%=request.getContextPath()%>/login">
                Área Administrativa
            </a>
        </li>

    </ul>

</nav>