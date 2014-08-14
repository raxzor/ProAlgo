
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>TCC</title>
<script language="javascript" src="DragAndDrop.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="menu.css" type="text/css" media="screen" />
</head>

<body>
<div class="logomarca"><img src="images/kid42.png" alt="Smiley face" height="100" width="100"></div>
<ul id="menu">
     <li><a href="index.html">P�gina Inicial</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P?gina Inicial -->
	
	<li><a href="#" class="drop">Sobre</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <h2>Bem vindo!</h2>
            </div>
    
            <div class="col_2">
                <p>O Projeto Algo+ foi desenvolvido por uma aluno do curso de An?lise e Desenvolvimento de Sistemas do Insituto Federal de Educa??o, Ci?ncia e Tecnologia da Para?ba, com o prop?sito de auxiliar o processo de ensino-aprendizagem da disciplina de algoritmos atrav?s do uso de fluxogramas.</p>   
           </div>
	</div><!-- Fim do container Sobre -->
    
    </li><!-- Fim item Sobre -->

	<li><a href="#" class="drop">Tutorial</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <p>1? Passo: Escolha a Miss�o</p>   
            </div>
			<div class="col_2">
                <p>2? Passo: Leia o enunciado da quest�o!</p>   
            </div>
			<div class="col_2">
                <p>3? Passo: Arraste as figuras aos seus respectivos campos.</p>   
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
	</li><!-- Fim item P?gina Inicial -->
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
            <div class="camposTable">
			<h2 class="titulos"> Lista de Professores </h2>
                        <form name ="lista de professores" action="Controler" method="post">
                            <input type="hidden" name="action" value="1"/>
                            Nome:  <input name="nome" type="text">
                            <input type="submit" value="Confirmar">
                        </form>
			<table border="1px" >
				<tr>
				  <td style="min-width:100px" align="center">Nome</td>
				  <td style="min-width:100px" align="center">Login</td> 
				  <td style="min-width:100px" align="center">Senha</td>
				  <td style="min-width:100px" align="center">Institui��o</td>
				  <td style="min-width:100px" align="center">Curso</td>
				</tr>
                                
                                <c:forEach items="${professor}" var="professores">
				<tr>
				  <td style="min-width:100px" align="center">${professores.nome}</td>
				  <td style="min-width:100px" align="center">${professores.login}</td> 
				  <td style="min-width:100px" align="center">${professores.senha}</td>
				  <td style="min-width:100px" align="center">${professores.instituicao}</td>
				  <td style="min-width:100px" align="center">${professores.curso}</td>
                                  <form name ="deletar professor" action="Controler" method="post">
                                      <input type="hidden" name="action" value="5"/>
                                      <input type="hidden" name="idProfessor" value="${professores.id}"/>
                                      <td style="min-width:50px" align="center"><input type="image" src="images/1407476402_DeleteRed.png"></td>
                                  </form>
                                  <form name ="editar professor" action="Controler" method="post">
                                      <input type="hidden" name="action" value="6"/>
                                      <input type="hidden" name="idProfessor" value="${professores.id}"/>
                                      <td style="min-width:50px" align="center"><input type="image" src="images/1407478992_edit-file.png"></td>
                                  </form>
                                1407478992_edit-file
				</tr>
                                </c:forEach>
			</table>
			
			</div>
        </div>
            
<h3 id="app_status">?rea de Status do Aplicativo...</h3>
       
       
        
        
        
</body>

</html>