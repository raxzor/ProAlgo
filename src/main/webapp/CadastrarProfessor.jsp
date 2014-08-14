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
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen" />
        <title>JSP Page</title>
    </head>
    <body>
<div class="logomarca"><img src="images/kid42.png" alt="Smiley face" height="100" width="100"></div>
<ul id="menu">
     <li><a href="index.html">Página Inicial</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
	
	<li><a href="#" class="drop">Sobre</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <h2>Bem vindo!</h2>
            </div>
    
            <div class="col_2">
                <p>O Projeto Algo+ foi desenvolvido por uma aluno do curso de An�lise e Desenvolvimento de Sistemas do Insituto Federal de Educa��o, Ci�ncia e Tecnologia da Para�ba, com o prop�sito de auxiliar o processo de ensino-aprendizagem da disciplina de algoritmos atrav�s do uso de fluxogramas.</p>   
           </div>
	</div><!-- Fim do container Sobre -->
    
    </li><!-- Fim item Sobre -->

	<li><a href="#" class="drop">Tutorial</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <p>1� Passo: Escolha a Miss�o</p>   
            </div>
			<div class="col_2">
                <p>2� Passo: Leia o enunciado da quest�o!</p>   
            </div>
			<div class="col_2">
                <p>3� Passo: Arraste as figuras aos seus respectivos campos.</p>   
            </div>
			<div class="col_2">
                <h2>Vamos come�ar?</h2>
           </div>
            
            
            
        </div><!-- Fim do container Sobre -->
    
    </li><!-- Fim item Sobre -->
	
	<li><a href="#" class="drop">Miss�es</a><!-- Begin 3 columns Item -->
    
        <div class="dropdown_3columns align_right"><!-- Begin 3 columns container -->
            
            <div class="col_3">
                <h2>Lista de Miss�es</h2>
            </div>
            
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="soma.html">Somar</a></li>
                    <li><a href="media.html">M�dia Aritim�tica</a></li>
                    <li><a href="maiorIdade.html">Maior Idade</a></li>
                    <li><a href="imc.html">IMC</a></li>
                    <li><a href="numeroPar.html">N�meros Pares</a></li>
                </ul>   
    
            </div>
            
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="#">ThemeForest</a></li>
                    <li><a href="#">GraphicRiver</a></li>
                    <li><a href="#">ActiveDen</a></li>
                    <li><a href="#">VideoHive</a></li>
                    <li><a href="#">3DOcean</a></li>
                </ul>   
    
            </div>
            
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="#">Design</a></li>
                    <li><a href="#">Logo</a></li>
                    <li><a href="#">Flash</a></li>
                    <li><a href="#">Illustration</a></li>
                    <li><a href="#">More...</a></li>
                </ul>   
    
            </div>
         </div><!-- End 3 columns container -->
        
    </li><!-- End 3 columns Item -->
    <li class="menu_right"><a href="index.html">Sair</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
</ul>
        <div class="AreaGeral">
        <div class="AreaInicialFiguras">
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	<div id="Inicio" draggable="true"  ondragstart="drag_start(event)" ondragend="drag_end(event)">
	Inicio
	</div>
        </div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	<div id="Leia" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	Leia
	</div>
        </div>
        
	<div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <div id="Leia2" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	Leia
	</div>
        </div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <div id="Processa" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	Processa
	</div>
        </div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <div id="Escreva" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	Escreva
	</div>
        </div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <div id="Fim" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)"  >
	Fim
	</div>
        </div>
        </div>

        <div class="AreaFinalFiguras">
            <div class="camposForm">
			<h2 class="titulos">Cadastrar novo Professor</h2>
                        <form action="Controler" method="post">
                            <input type="hidden" name="action" value="2">
                            <input type="hidden" name="id_professor" value="${professor.id}">
                            Nome:  <input type="text" name="nome" value="${professor.nome}"> </br>
                            Login: <input type="text" name="login" value="${professor.login}"> </br>
                            Senha: <input type="text" name="senha" value="${professor.senha}"> </br>
                            Instituição: <input type="text" name="instituicao" value="${professor.instituicao}"> </input></br>
                            Curso: <input type="text" name="curso" value="${professor.curso}">
                            <c:choose>
                                <c:when test="${professor.id eq null}">
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
