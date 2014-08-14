<%-- 
    Document   : BemVindo
    Created on : 08/08/2014, 16:17:57
    Author     : Gilmar
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="fallback.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div id="container">
			<div class="welcome">
                            <div class="welcome-user">Bem vindo! <b>${usuario.nome}</b></div>
				<div class="welcome-text">O Projeto Algo+ foi desenvolvido por um aluno do curso de Análise e Desenvolvimento de Sistemas do Insituto Federal de Educação, Ciência e Tecnologia da Paraíba, com o propósito de auxiliar o processo de ensino-aprendizagem da disciplina de algoritmos através do uso de fluxogramas.</div>
				<div class="home"><a href="index.jsp">Inicio</a></div>
			</div>
		</div>
    </body>
</html>
