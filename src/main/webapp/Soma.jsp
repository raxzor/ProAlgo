<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="DragAndDrop.js"></script>
        <link rel="stylesheet" type="text/css" href="SomaStyle.css">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen" />
        <script src="prototype.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
<div class="logomarca"><img src="images/PROALGO.png" alt="Smiley face" height="150" width="150"></div>
<ul id="menu">
     <li><a href="Inicio.jsp">Página Inicial</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
	
	<li><a href="#" class="drop">Sobre</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <h2>Bem vindo!</h2>
            </div>
    
            <div class="col_2">
                <p>O Projeto Algo+ foi desenvolvido por uma aluno do curso de Análise e Desenvolvimento de Sistemas do Insituto Federal de Educação, Ciência e Tecnologia da Paraíba, com o propósito de auxiliar o processo de ensino-aprendizagem da disciplina de algoritmos através do uso de fluxogramas.</p>   
           </div>
	</div><!-- Fim do container Sobre -->
    
    </li><!-- Fim item Sobre -->

	<li><a href="#" class="drop">Tutorial</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <p><b>1º Passo:</b> Escolha a Missões</p>   
            </div>
			<div class="col_2">
                <p><b>2º Passo:</b> Leia o enunciado da questão!</p>   
            </div>
			<div class="col_2">
                <p><b>3º Passo:</b> Arraste as figuras aos seus respectivos campos.</p>   
            </div>
			<div class="col_2">
                <h2><b>Vamos começar?</b></h2>
           </div>
            
            
            
        </div><!-- Fim do container Sobre -->
    
    </li><!-- Fim item Sobre -->
	
	<li><a href="#" class="drop">Missões</a><!-- Begin 3 columns Item -->
    
        <div class="dropdown_3columns align_right"><!-- Begin 3 columns container -->
            
            <div class="col_3">
                <h2>Lista de Missões</h2>
            </div>
            
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="Soma.jsp">Somar</a></li>
                    <li><a href="MediaAritimetica.jsp">Média Aritimética</a></li>
                    <li><a href="maiorIdade.html">Maior Idade</a></li>
                    <li><a href="IMC.jsp">IMC</a></li>
                    <li><a href="NumeroPar.jsp">Números Pares</a></li>
                </ul>   
    
            </div>
            
            <div class="col_1">
    
                <ul class="greybox">
                    <li><a href="#">Raio de um Circulo</a></li>
                    <li><a href="#">Converter Temperatura</a></li>
                    <li><a href="#">Maior Número</a></li>
                    <li><a href="#">Numeros Positivos</a></li>
                    <li><a href="#">Numeros Crescentes</a></li>
                </ul>   
    
            </div>
           
         </div><!-- End 3 columns container -->
        
    </li><!-- End 3 columns Item -->
    
     <li class="menu_right"><a href="Inicio.jsp">Sair</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
</ul>
<div class="descricaoProblema"><h3 class="textoInicial">Calcule a soma de dois números inteiros. Boa Sorte!</h3></div>
        <div class="AreaGeral">
        <div class="AreaInicialFiguras">
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="LeiaN1Soma" title="Leia-1" name="null" src="images/LeiaN1Soma.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="EscrevaSoma" title="Escreva" name="null" src="images/EscrevaSoma.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="IncioSoma" title="Inicio" name="null" src="images/InicioSoma.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="LeiaN2Soma" title="Leia-2" name="null" src="images/LeiaN2Soma.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>    
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="FimSoma" title="Fim" name="null" src="images/FIMSoma.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>      
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
            <img id="ProcessaSoma" title="Processo" name="null" src="images/ProcessaSoma.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>  
        </div>

        <div class="AreaFinalFiguras">
            <div class="AreaCentralChegada">
                <div class="CampoInicio" id="Inicio" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false"  ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Leia-1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Leia-2" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Processo" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Escreva" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
             </div>
            
            <div class="AreaCentralChegada">   
                <div class="CampoLeia" id="Fim" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            <div id="Button">
            <input TYPE="BUTTON" NAME="submit" value="Enviar" onclick="validarSoma()" >
            </div>
        </div>
            
        </div>
     
</body>
</html>
