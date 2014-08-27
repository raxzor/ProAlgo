<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="DragAndDrop.js"></script>
        <link rel="stylesheet" type="text/css" href="CssIMC.css">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen" />
        <title>JSP Page</title>
    </head>
    <body>
<div class="logomarca"><img src="images/kid42.png" alt="Smiley face" height="100" width="100"></div>
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
                <p>1� Passo: Escolha a Missões</p>   
            </div>
			<div class="col_2">
                <p>2� Passo: Leia o enunciado da questão!</p>   
            </div>
			<div class="col_2">
                <p>3� Passo: Arraste as figuras aos seus respectivos campos.</p>   
            </div>
			<div class="col_2">
                <h2>Vamos come�ar?</h2>
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
                    <li><a href="soma.html">Somar</a></li>
                    <li><a href="media.html">Média Aritimética</a></li>
                    <li><a href="maiorIdade.html">Maior Idade</a></li>
                    <li><a href="imc.html">IMC</a></li>
                    <li><a href="numeroPar.html">Números Pares</a></li>
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
    <li class="menu_right"><form action="Controler" method="post"><input type="submit" value="Sair"> <input type="hidden" name="action" value="9"></form><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
</ul>
        <div class="descricaoProblema"><h3 class="textoInicial">Calcule o Indice de Massa Corpórea de uma pessoa e afirme se o seu IMC está saudável. O problema terá como parâmetros o Peso e a Altura de um indivíduo. Boa Sorte!</h3></div>
        <div class="AreaGeral">
        <div class="AreaInicialFiguras">
        
        
	<div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="FimIMC" src="images/FimIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>
                    
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
            <img id="InicioIMC" src="images/InicioIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img  id="LeiaAltura" src="images/LeiaAltura.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img id="ExibeForaPeso" src="images/PesoIdeal.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img id="ExibeForaPeso" src="images/ForaDoPeso.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
            
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img id="ProcessaIMC" src="images/ProcessaIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
         
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img  id="CondicaoSetaEsquerda" src="images/SetaSimPar.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div> 
            
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img id="CondicaoSetaDireita" src="images/SetaNaoPar.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
            
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
            <img  id="CondicaoIMC" src="images/CondicaoIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
            
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
        <img  id="LeiaPeso" src="images/LeiaPeso.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
	</div>
        
        <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
	    <img id="FimIMC2" src="images/FimIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
        </div>
        </div>


        <div class="AreaFinalFiguras">
            <div class="AreaCentralChegada">
                <div class="CampoInicio" id="Inicio" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false"  ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Leia-Altura" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Leia-Peso" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoLeia" id="Processo" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoSim" id="Sim" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoNao" id="Nao" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="CampoProcessa" id="Nao" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="Condicao" id="Condicao" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" ></div>
             </div>
            
            <div class="AreaCentralChegada">
                <div class="ExibeEsquerda" id="Acima-Peso" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
            <div class="AreaCentralChegada">
                <div class="ExibeDireita" id="Peso-ideal" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
            </div>
            
             <div class="AreaCentralChegada">   
                <div class="CampoFimDireita" id="Fim-1" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
             </div>
            
            <div class="AreaCentralChegada">   
                <div class="CampoFimEsquerda" id="Fim-2" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)"></div>
             </div>
        </div>
        </div>
            
<h3 id="app_status">�rea de Status do Aplicativo...</h3>
       
       
        
        
        
</body>
</html>
