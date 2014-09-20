/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Gilmar
 */
public class Helper {
    private static Helper instance;
    
    private Map<Integer, Icommand> commands = new HashMap<>();
    
    private Helper(){
//        commands.put(1, new ListarProfessorCommand());
//        commands.put(2, new CadastrarProfessorCommand());
        commands.put(3, new CadastrarAlunoCommand());
        commands.put(4, new ListarAlunoCommand());
//        commands.put(5, new DeletarProfessorCommand());
//        commands.put(6, new PrepareEditProfessorCommand());
        commands.put(7, new DeletarAlunoCommand());
        commands.put(8, new EditarAlunoCommand());
        commands.put(9, new LogoutCommand());
        commands.put(10, new LogonCommand());
        commands.put(11, new SalvarEstatisticasCommand());
        commands.put(12, new ListarEstatisticas());
    }
    
    public static Helper getInstance(){
        if(instance == null){
            instance = new Helper();
        }
        return instance;
    }
    public Icommand getCommand(Integer elemento){
        Icommand command = commands.get(elemento);
        return command;
    }
    
}
