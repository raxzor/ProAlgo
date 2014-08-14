<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
     <li><a href="index.html">P�gina Inicial</a><!-- Inicio item Sobre -->
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
            <div class="AreaCentralChegada">
                <div class="CampoInicio" id="Inicio1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false"  ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Leia1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Gilmar" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoProcessa" id="Processa1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoEscreva" id="Escreva1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
             </div>
            
            <div class="AreaCentralChegada">   
                <div class="CampoFim" id="Fim1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
        </div>
        
        </div>
            
<h3 id="app_status">�rea de Status do Aplicativo...</h3>
       
       
        
        
        
</body>
</html>
