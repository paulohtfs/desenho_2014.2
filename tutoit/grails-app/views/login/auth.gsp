<html>
    <head>
        <meta name="layout" content="login">
    </head>

    <body>

    <h1>Login</h1>

    <g:if test='${flash.message}'>
        <div class='login_message'>${flash.message}</div>
    </g:if>


    <form action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
        <input type='text' class='username' name='j_username' id='username' placeholder="Nome de Usuário"/>
        <input type='password' class='password' name='j_password' id='password' placeholder="Senha"/>
        <button type='submit' id="submit">Entrar</button>
    </form>

    <div class="sign-in">
        <a href="${createLink(controller: 'user', action: 'create')}">Cadastre-se</a>
    </div>

    <div class="connect">
        <p>Ou conecte-se com:</p>
        <p>
            <a class="facebook" href=""></a>
            <a class="twitter" href=""></a>
        </p>
    </div>

    </body>
</html>
