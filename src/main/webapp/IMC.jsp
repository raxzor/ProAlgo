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
        <div class="descricaoProblema"><h3 class="textoInicial">Calcule o Indice de Massa Corpórea de uma pessoa e afirme se o seu IMC está saudável. O problema terá como parâmetros o Peso e a Altura de um indivíduo. Boa Sorte!</h3></div>
        <div class="AreaGeral">
            <div class="AreaInicialFiguras">


                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="FimIMC" title="Fim-IMC" name="null" src="images/FimIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="InicioIMC" title="Inicio" name="null" src="images/InicioIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img  id="LeiaAltura" title="Leia-Altura" name="null" src="images/LeiaAltura.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="ExibePesoIdeal" title="Peso-Ideal" name="null" src="images/PesoIdeal.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="ExibeForaPeso" title="Fora-Peso" name="null" src="images/ForaDoPeso.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="ProcessaIMC" title="Processo" name="null" src="images/ProcessaIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img  id="CondicaoSetaEsquerda" title="Sim" name="null" src="images/SetaSimPar.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div> 


                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="CondicaoSetaDireita" title="Nao" name="null" src="images/SetaNaoPar.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img  id="CondicaoIMC" title="Condicao" name="null" src="images/CondicaoIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img  id="LeiaPeso" title="Leia-Peso" name="null" src="images/LeiaPeso.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>

                <div class="AreaCentralSaida" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" >
                    <img id="FimIMC2" title="Fim-IMC2" name="null" src="images/FimIMC.png" draggable="true" ondragstart="drag_start(event)" ondragend="drag_end(event)">
                </div>
            </div>


            <div class="AreaFinalFiguras">
                <div class="AreaCentralChegada">
                    <div class="CampoInicio" id="Inicio" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false"  ondragleave="drag_leave(event)">
                        
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="CampoLeia" id="Leia-Altura" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" >
                        
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="CampoLeia" id="Leia-Peso" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                        
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="CampoLeia" id="Processo" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                        
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="CampoSim" id="Sim" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                        
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="CampoNao" id="Nao" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                        
                    </div>
                </div>

<!--                <div class="AreaCentralChegada">
                    <div class="CampoProcessa" id="Nao" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" >
                        7
                    </div>
                </div>-->

                <div class="AreaCentralChegada">
                    <div class="Condicao" id="Condicao" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)" >
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="ExibeEsquerda" id="Peso-Ideal" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                    </div>
                </div>

                <div class="AreaCentralChegada">
                    <div class="ExibeDireita" id="Fora-Peso" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                    </div>
                </div>

                <div class="AreaCentralChegada">   
                    <div class="CampoFimDireita" id="Fim-IMC2" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                    </div>
                </div>
                
                <div class="AreaCentralChegada">   
                    <div class="CampoFimEsquerda" id="Fim-IMC" ondragenter="drag_enter(event)" ondrop="drag_drop(event)" ondragover="return false" ondragleave="drag_leave(event)">
                    </div>
                </div>
            <div id="Button">
            <input TYPE="BUTTON" NAME="submit" value="Enviar" onclick="validarIMC()" >
            </div>
            </div>
            
        </div>

    
    </body>
</html>
