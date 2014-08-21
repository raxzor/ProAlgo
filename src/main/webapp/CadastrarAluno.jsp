<%-- 
    Document   : CadastrarProfessor
    Created on : 05/08/2014, 21:27:51
    Author     : Gilmar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="DragAndDrop.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen"/>
        <title>JSP Page</title>
    </head>
    <body>
<div class="logomarca"><img src="images/kid42.png" alt="Smiley face" height="100" width="100"></div>
<ul id="menu">
     <li><a href="index.jsp">Página Inicial</a><!-- Inicio item Sobre -->
	
	
        <li><a href="CadastrarAluno.jsp">Novo Aluno</a></li>
        <li><a href="ListarAlunosPorNome.jsp">Editar Aluno</a></li>
        <li><a href="ListarAlunosPorNome.jsp">Deletar Aluno</a></li>
        <li><a href="CadastrarAluno.jsp">Estatísticas do Aluno</a></li>
        
    </li>
	
  
    <li class="menu_right"><a href="index.jsp">Sair</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
</ul>
        <div class="AreaGeral">
       
        <div class="AreaFinalFigurasProfessor">
            <div class="camposForm">
			<h2 class="titulos">Cadastrar novo Aluno <b>${usuario.nome}</b></h2>
                        <c:if test="${isNew ne null}">
                            <b>kkkkkkkkkkKKKKKKKKKKKKKKKKKKKKKKKK</b>
                        </c:if>
                        <form action="Controler" method="post">
                            <input type="hidden" name="action" value="3">
                        Nome:  <input type="text" name="nome" value="${aluno.nome}"> </br>
                        Login: <input type="text" name="login" value="${aluno.login}"> </br>
                        Senha: <input type="text" name="senha"  value="${aluno.senha}">  </br>
                        Instituição: <input type="text" name="instituicao"  value="${aluno.instituicao}"> </br>
                        Tipo de Deficiência <input type="text" name="tipoDeficiencia"  value="${aluno.tipoDeficiencia}"></br>
                        Curso: <input type="text" name="curso"  value="${aluno.curso}"> 
                        Turma: <input type="text" name="turma"  value="${aluno.turma}"> </br>
                        <c:choose>
                            <c:when test="${aluno.id eq null}">
                                <input type="submit" value="cadastrar">
                            </c:when>
                            <c:otherwise>
                                <input type="submit" value="Alterar">
                            </c:otherwise>
                        </c:choose>
                        </form>
			</div>
        </div>
            
  
</body>
</html>
