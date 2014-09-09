
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="logomarcaListarAluno"><img src="images/PROALGO.png" alt="Smiley face" height="150" width="150"></div>
        <ul id="menu">
            <li><a href="Inicio.jsp">Página Inicial</a>
            <li><a href="CadastrarAluno.jsp">Novo Aluno</a></li>
            <li><a href="ListarAlunosPorNome.jsp">Editar Aluno</a></li>
            <li><a href="ListarAlunosPorNome.jsp">Deletar Aluno</a></li>
            <li><a href="CadastrarAluno.jsp">Estatísticas do Aluno</a></li>
            <li class="menu_right"><a href="Inicio.jsp">Sair</a><!-- Inicio item Sobre -->
            </li><!-- Fim item P�gina Inicial -->
        </li>
    </ul>
    <div class="AreaGeral">
        
        <div class="AreaFinalFigurasProfessor">
            <div class="camposTable">
                <h2 class="titulos"> Estatisticas do Aluno</h2>
                <p style="margin-left: 330px; margin-top: -40px; width: 150px;"></p><br>
                <div class="tabelaListarEstatisticas">
                <form name ="lista de alunos" action="Controler" method="post">
                    <input type="hidden" name="action" value="4"/>
                    Nome:  <input style="margin-top: 40px;" name="nome" type="text">
                    <input type="submit" value="Confirmar"><br>
                </form>
                    <table border="1px" style="margin-top: 30px; color: #0272a7; " >
                    <tr style="background: #BBBBBB; color: #FFFFFF; font: bolder;">
                        <td style="min-width:250px" align="center">Aluno</td>
                        <td style="min-width:110px" align="center">Data</td>
                        <td style="min-width:100px" align="center">Fluxograma</td>
                        <td style="min-width:150px" align="center">Venceu</td>
                        <td style="min-width:100px" align="center">Falhou</td>
                    </tr>
                    <tr>
                        <td style="min-width:50px" align="center">Lucimário Queiroga</td>
                        <td style="min-width:50px" align="center">05/08/2014</td>
                        <td style="min-width:50px" align="center">Soma</td>
                        <td style="min-width:50px" align="center">2</td>
                        <td style="min-width:50px" align="center">4</td>
                    </tr>
                    <tr>
                        <td style="min-width:50px" align="center">Lucimário Queiroga</td>
                        <td style="min-width:50px" align="center">05/08/2014</td>
                        <td style="min-width:50px" align="center">IMC</td>
                        <td style="min-width:50px" align="center">3</td>
                        <td style="min-width:50px" align="center">6</td>
                    </tr>
                    
                </table>

            </div>
        </div>

</body>

</html>