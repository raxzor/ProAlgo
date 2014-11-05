<%-- 
    Document   : CadastrarProfessor
    Created on : 05/08/2014, 21:27:51
    Author     : Gilmar
--%>

<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <script language="javascript" src="DragAndDrop.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen"/>
        <title>JSP Page</title>
    </head>
    <body>
<div class="logomarcaCadastrarAluno"><img src="images/PROALGO.png" alt="Smiley face" height="150" width="150"></div>
<ul id="menu">
     <li><a href="Professor.jsp">Página Inicial</a><!-- Inicio item Sobre -->
	
	
        <li><a href="CadastrarAluno.jsp">Novo Aluno</a></li>
        <li><a href="ListarAlunosPorNome.jsp">Editar Aluno</a></li>
        <li><a href="ListarAlunosPorNome.jsp">Deletar Aluno</a></li>
        <li><a href="Controler?action=12">Estatísticas dos Alunos</a></li>
        
    </li>
	<li class="menu_right"><a href="Inicio.jsp">Sair</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P?gina Inicial -->
</ul>
        <div class="AreaGeral">
       
        <div class="AreaFinalFigurasProfessor">
            <div class="camposForm">
			<h2 class="titulos">Cadastrar novo Aluno</h2>
                        <p style="margin-left: 370px; margin-top: -40px;"><b>${usuario.nome}</b></p>
                        <div class="tabelaForm">
                        <div class="formCadastroAluno1">
                            
                        <form action="Controler" method="post">
                            <input type="hidden" name="action" value="3">
                            Nome: <br> <input  type="text" name="nome" value="${aluno.nome}"> <br>
                        Login: <br><input type="text" name="login" value="${aluno.login}"> <br>
                        Senha: <br><input type="password" name="senha"  value="${aluno.senha}">  <br>
                        Instituição:<br> <input type="text" name="instituicao"  value="${aluno.instituicao}"> <br>
                        </div>
                        <div class="formCadastroAluno2">
                        
                        Tipo de Deficiência<br> <input type="text" name="tipoDeficiencia"  value="${aluno.tipoDeficiencia}"><br>
                        Curso:<br> <input type="text" name="curso"  value="${aluno.curso}"> <br>
                        Turma:<br> <input type="text" name="turma"  value="${aluno.turma}"> <br><br>
                        <c:choose>
                            <c:when test="${aluno.id eq null}">
                                <input onclick="alertCadastrar()" style="margin-left: 150px; margin-top: 55px;" type="submit" value="cadastrar">
                                
                            </c:when>
                            <c:otherwise>
                                <input type="hidden" name="id_aluno" value="${aluno.id}">
                                <input type="submit" value="Alterar">
                            </c:otherwise>
                        </c:choose>
                        </form>
                        </div>
                        </div>
			</div>
        </div>
            
  
</body>
</html>
