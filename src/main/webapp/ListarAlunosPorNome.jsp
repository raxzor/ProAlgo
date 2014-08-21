
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
        <div class="logomarca"><img src="images/kid42.png" alt="Smiley face" height="100" width="100"></div>
        <ul id="menu">
            <li><a href="index.jsp">Página Inicial</a>
            <li><a href="CadastrarAluno.jsp">Novo Aluno</a></li>
            <li><a href="ListarAlunosPorNome.jsp">Editar Aluno</a></li>
            <li><a href="ListarAlunosPorNome.jsp">Deletar Aluno</a></li>
            <li><a href="CadastrarAluno.jsp">Estatísticas do Aluno</a></li>
            <li class="menu_right"><a href="index.jsp">Sair</a><!-- Inicio item Sobre -->
            </li><!-- Fim item P�gina Inicial -->
        </li>
    </ul>
    <div class="AreaGeral">
        
        <div class="AreaFinalFigurasProfessor">
            <div class="camposTable">
                <h2 class="titulos"> Lista de Alunos </h2>
                <form name ="lista de alunos" action="Controler" method="post">
                    <input type="hidden" name="action" value="4"/>
                    Nome:  <input name="nome" type="text">
                    <input type="submit" value="Confirmar">
                </form>
                <table border="1px" >
                    <tr>
                        <td style="min-width:100px" align="center">Nome</td>
                        <td style="min-width:100px" align="center">Login</td> 
                        <td style="min-width:100px" align="center">Senha</td>
                        <td style="min-width:100px" align="center">Instituição</td>
                        <td style="min-width:100px" align="center">Curso</td>
                        <td style="min-width:100px" align="center">Tipo de Deficiência</td>
                        <td style="min-width:100px" align="center">Turma</td>
                    </tr>

                    <c:forEach items="${aluno}" var="alunos">
                        <tr>
                            <td style="min-width:50px" align="center">${alunos.nome}</td>
                            <td style="min-width:50px" align="center">${alunos.login}</td> 
                            <td style="min-width:50px" align="center">${alunos.senha}</td>
                            <td style="min-width:50px" align="center">${alunos.instituicao}</td>
                            <td style="min-width:50px" align="center">${alunos.curso}</td>
                            <td style="min-width:50px" align="center">${alunos.tipoDeficiencia}</td>
                            <td style="min-width:50px" align="center">${alunos.turma}</td>

                        <form name ="editar aluno" action="Controler" method="post">
                            <input type="hidden" name="action" value="8"/>
                            <input type="hidden" name="idProfessor" value="${alunos.id}"/>
                            <td style="min-width:50px" align="center"><input type="image" src="images/1407478992_edit-file.png"></td>
                        </form>  
                        <form name ="deletar aluno" action="Controler" method="post">
                            <input type="hidden" name="action" value="7"/>
                            <input type="hidden" name="idAluno" value="${alunos.id}"/>
                            <td style="min-width:50px" align="center"><input type="image" src="images/1407476402_DeleteRed.png"></td>
                        </form>


                        </tr>
                    </c:forEach>
                </table>

            </div>
        </div>

</body>

</html>