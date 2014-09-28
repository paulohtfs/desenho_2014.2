<html>
<head>
	<g:render template="bootstrap"/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body>

	<div class="page-container">
	    <h1>Login</h1>
		
		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>


		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<p>
				<input type='text' class='username' name='j_username' id='username' placeholder="Nome de Usuário"/>
			</p>

			<p>
				<input type='password' class='password' name='j_password' id='password' placeholder="Senha"/>
			</p>

			<p>
				<button type='submit' id="submit">Entrar</button>
			</p>

			<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</p>
		</form>

		<div class="connect">
	        <p>Ou conecte-se com:</p>
	        <p>
	            <a class="facebook" href=""></a>
	            <a class="twitter" href=""></a>
	        </p>
	    </div>
	</div>

	<!-- Javascript 
	<script src="${request.contextPath}/js/jquery-1.8.2.min.js"></script>
	<script src="${request.contextPath}/js/supersized.3.2.7.min.js"></script>
	<script src="${request.contextPath}/js/supersized-init.js"></script>
	<script src="${request.contextPath}/js/scripts.js"></script>-->

	<script type='text/javascript'>
		<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
		// -->
	</script>
	
</body>
</html>
