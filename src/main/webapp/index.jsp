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
                <p><b>1º Passo:</b> Crie uma Conta</p>   
            </div>
			<div class="col_2">
                <p><b>2º Passo:</b> Faça seu Login</p>   
            </div>
		
            <div class="col_2">
                <h2><b>Vamos Começar?</b></h2>
           </div>
            
            
            
        </div><!-- Fim do container Sobre -->
    
    </li><!-- Fim item Sobre -->
	
	
   
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
            
           <div class="rodapeInicio">Desenvolvido por Gilmar Moreira. Todos os direitos reservados.</div> 

       
       
        
        
        
</body>
</html>
