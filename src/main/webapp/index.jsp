<%-- 
    Document   : Entrar
    Created on : 08/08/2014, 16:17:00
    Author     : Gilmar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style_1.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div id="container">
            <form action="Controler" method="post">
                <input type="hidden" name="action" value="10">
				<div class="login">Login</div>
				<div class="username-text">Nome do Usuário:</div>
				<div class="password-text">Senha:</div>
				<div class="username-field">
					<input type="text" name="login" required="true"  />
				</div>
				<div class="password-field">
                                    <input type="password" name="senha" required="true" />
				</div>
				<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">Lembrar-me</label>
				<div class="forgot-usr-pwd">Esqueci <a href="#">Usuário</a> ou <a href="#">Senha</a></div>
				<input type="submit" name="submit" value="Entrar"/>
			</form>
		</div>
    </body>
</html>
