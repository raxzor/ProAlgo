
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>TCC</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <li><a href="Controler?action=12">Estatísticas dos Alunos</a></li>
            <li class="menu_right"><a href="Inicio.jsp">Sair</a><!-- Inicio item Sobre -->
            </li><!-- Fim item P�gina Inicial -->
        </li>
    </ul>
    <div class="AreaGeral">
        
        <div class="AreaFinalFigurasProfessor">
            <div class="camposTable">
                <h2 class="titulos"> Estatísticas dos Alunos</h2>
                <p style="margin-left: 330px; margin-top: -40px; width: 150px;"></p><br>
                <div class="tabelaListarEstatisticas">
                   <table border="1px" style="margin-top: 30px; color: #0272a7; " >
                    <tr style="background: #BBBBBB; color: #FFFFFF; font: bolder;">
                        <td style="min-width:250px" align="center">Aluno</td>
                        <td style="min-width:110px" align="center">Data</td>
                        <td style="min-width:100px" align="center">Fluxograma</td>
                        <td style="min-width:150px" align="center">Venceu</td>
                        <td style="min-width:100px" align="center">Falhou</td>
                    </tr>
                    <c:forEach items="${estatisticas}" var="estatistica">
                        <tr>
                            <td style="min-width:50px" align="center">${estatistica.jogador.nome}</td>
                            <td style="min-width:50px" align="center">${estatistica.data}</td>
                            <td style="min-width:50px" align="center">${estatistica.fluxograma}</td>
                            <td style="min-width:50px" align="center">${estatistica.acerto}</td>
                            <td style="min-width:50px" align="center">${estatistica.erro}</td>
                        </tr>
                    </c:forEach>
                </table>

            </div>
        </div>

</body>

</html>