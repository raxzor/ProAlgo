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
<div class="logomarcaProfessor"><img src="images/PROALGO.png" alt="Smiley face" height="150" width="150"></div>
<div id="validacao">
            
            <div id="login2">
                Bem vindo, Prof.  ${usuario.nome}. 
            </div>
            
        </div> 
<ul id="menu">
         
    <li><a href="index.jsp">Página Inicial</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
	
        <li><a href="CadastrarAluno.jsp">Novo Aluno</a></li>
        <li><a href="ListarAlunosPorNome.jsp">Editar Aluno</a></li>
        <li><a href="ListarAlunosPorNome.jsp">Deletar Aluno</a></li>
        <li><a href="Controler?action=12">Estatísticas dos Alunos</a></li>
        
    </li>

    <li class="menu_right"><a href="Inicio.jsp">Sair</a><!-- Inicio item Sobre -->
	</li><!-- Fim item P�gina Inicial -->
</ul>
        <div class="AreaGeral">
       <div class="AreaFinalFigurasProfessor">
         
        </div>
        
        </div>
   
</body>
</html>
