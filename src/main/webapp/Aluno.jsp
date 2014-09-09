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
<div class="logomarca"><img src="images/PROALGO.png" alt="Smiley face" height="150" width="150"></div>
<div id="validacao">
        <form action="Controler" method="post">
            <input type="hidden" name="action" value="10">
            <div id="login">
                Login: <input style="width: 100px; border-radius: 6px;" type="text" name="login" required="true" >
            </div>
            <div id="senha">
            Senha: <input style="width: 100px; border-radius: 6px;"  type="password" name="senha" required="true">
            <input type="submit" name="submit" value="Entrar">
            </div>
        </form>
    </div>

<ul id="menu">
     <li><a href="Inicio.jsp">Página Inicial</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
	
	<li><a href="#" class="drop">Sobre</a><!-- Inicio item Sobre -->
    
        <div class="dropdown_2columns"><!-- Inicio do container Sobre -->
    
            <div class="col_2">
                <h2>Bem vindo!</h2>
            </div>
    
            <div class="col_2">
                <p >O Projeto Algo+ foi desenvolvido por uma aluno do curso de Análise e Desenvolvimento de Sistemas do Insituto Federal de Educação, Ciência e Tecnologia da Paraíba, com o propósito de auxiliar o processo de ensino-aprendizagem da disciplina de algoritmos através do uso de fluxogramas.</p>   
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
        <div class="AreaGeral">
        <div class="AreaFinalFigurasAluno">
            <h2 class="TituloProAlgo">ProAlgo+</h2>
            <p class="textoInicial">O Projeto ProAlgo+ foi desenvolvido por uma aluno do curso de Análise e
             Desenvolvimento de Sistemas do Insituto Federal de Educação, Ciência
             e Tecnologia da Paraíba, com o propósito de auxiliar o processo de
             ensino-aprendizagem da disciplina de algoritmos através do uso de fluxogramas.
             A ferramenta oferece ao usuário um ambiente de resolução de problemas algorítmicos simples e intuitivo,
             que irá auxiliá-lo a resolver os problemas com objetividade, bem como simplificará o entendimento acerca desse conteúdo.
            </p>   

        </div>
   
</body>
</html>
