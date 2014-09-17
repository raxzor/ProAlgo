var largou = false;
var validador;
/*fun��o que serve para exibir as mensagens na div que ele est� sobre ela*/

function appStatus(msg){
    document.getElementById('app_status').innerHTML = msg;
}

/*fun��o que ser� ativada ao arrastar o objeto*/
function drag_start(e){
    //		appStatus("arrastando o objeto " +e.target.getAttribute('id'));
    e.dataTransfer.dropEffect='move'; /*aplica o efeito de estar movendo*/
    e.dataTransfer.setData("text/plain", e.target.getAttribute('id'));
}

function drag_enter(e){
//		appStatus("Voc� esta arrastando sobre a " + e.target.getAttribute('id'));
}

function drag_leave(e){
//		appStatus("Voc� deixou a "+ e.target.getAttribute('id'));
}

function drag_drop(e){
    var element = e.dataTransfer.getData("Text");
    //		appStatus("Voc� largou o objeto " +element+ "na " +e.target.getAttribute('id'));
                
    e.target.appendChild(document.getElementById(element));
    largou = true;
                
    //                appStatus("Esperado = " + document.getElementById(element).title + " Local = " + document.getElementById(element).name);
    document.getElementById(element).name = e.target.getAttribute('id');
//                var o = document.getElementById(element);
//                appStatus("Esperado = " + o.title + " Local = " + o.name);
//                if(o.title == o.name){
//                    alert("Graças a Deus");
//                }
//                var ele = document.getElementById(element);
//                ele.dropp = e.target.getAttribute('id');
//                ele.local = 
//                appStatus("destino = " + ele.destino + " dropp = " + ele.dropp)
//                appStatus("ooooooooooooooo V = " + v + "8888888" + ele.dropp + "----valid " + valid);
		
/*document.getElementById(element).removeAttribute("draggable");*/
}
	
function drag_end(e){
    var status = document.getElementById('app_status');
    if(largou == false){ /*correto*/
    //		appStatus("Voc� deixou o objeto " +e.target.getAttribute('id')+"");
		
    }
}
        
function ajaxRequest(resultado, validador) {
//    alert("Deu Certo");
    document.location.href='http://localhost:8080/ProAlgo/Controler?action=11&result='+resultado+'&algoritmo='+validador;
}  
         
function validarSoma(){
            
    //                    alert("Graças a Deus");
    var LeiaN1Soma = document.getElementById("LeiaN1Soma");
    var EscrevaSoma = document.getElementById("EscrevaSoma");
    var IncioSoma = document.getElementById("IncioSoma");
    var LeiaN2Soma = document.getElementById("LeiaN2Soma");
    var FimSoma = document.getElementById("FimSoma");
    var ProcessaSoma = document.getElementById("ProcessaSoma");
            
    var validacao = true;
            
    if(LeiaN1Soma.name != LeiaN1Soma.title){
        validacao = false;
    }
    if(EscrevaSoma.name != EscrevaSoma.title){
        validacao = false;
    }
    if(IncioSoma.name != IncioSoma.title){
        validacao = false;
    }
    if(LeiaN2Soma.name != LeiaN2Soma.title){
        validacao = false;
    }
    if(LeiaN1Soma.name != LeiaN1Soma.title){
        validacao = false;
    }
    if(ProcessaSoma.name != ProcessaSoma.title){
        validacao = false;
    }
    //            appStatus("Validacao = " + validacao)
    if(validacao == true){
        alert("Parabéns, Algoritmo resolvido com sucesso!");
     }else{
        alert("Falha!");
      }
    validador = "Soma";
    var x = ajaxRequest(validacao, validador);
//              
}
function ajaxRequest2(resultado, validador) {
//    alert("Deu Certo");
    document.location.href='http://localhost:8080/ProAlgo/Controler?action=11&result='+resultado+'&algoritmo='+validador;
}
function validarIMC(){
            
    //                    alert("Graças a Deus");
    var InicioIMC = document.getElementById("InicioIMC");
    var LeiaAltura = document.getElementById("LeiaAltura");
    var ExibeForaPeso = document.getElementById("ExibeForaPeso");
    var ExibePesoIdeal = document.getElementById("ExibePesoIdeal");
    var ProcessaIMC = document.getElementById("ProcessaIMC");
    var CondicaoSetaEsquerda = document.getElementById("CondicaoSetaEsquerda");
    var CondicaoSetaDireita = document.getElementById("CondicaoSetaDireita");
    var CondicaoIMC = document.getElementById("CondicaoIMC");
    var LeiaPeso = document.getElementById("LeiaPeso");
    var FimIMC = document.getElementById("FimIMC");
    var FimIMC2 = document.getElementById("FimIMC2");
            
    var validacao = true;
            
    if(InicioIMC.name != InicioIMC.title ){
        validacao = false;
    //                appStatus(InicioIMC.name + " != " + InicioIMC.title);
    }
    if(LeiaAltura.name != LeiaAltura.title){
        validacao = false;
    }
    if(ExibeForaPeso.name != ExibeForaPeso.title){
        validacao = false;
    }
    if(ExibePesoIdeal.name != ExibePesoIdeal.title){
        validacao = false;
    }
    if(ProcessaIMC.name != ProcessaIMC.title){
        validacao = false;
    }
    if(CondicaoSetaEsquerda.name != CondicaoSetaEsquerda.title){
        validacao = false;
    }
    if(CondicaoSetaDireita.name != CondicaoSetaDireita.title){
        validacao = false;
    }
    if(CondicaoIMC.name != CondicaoIMC.title){
        validacao = false;
    }
    if(LeiaPeso.name != LeiaPeso.title){
        validacao = false;
    }
    if(FimIMC.name != FimIMC.title || FimIMC.name == FimIMC2.title){
        validacao = false;
    }
    if(FimIMC2.name != FimIMC2.title || FimIMC2.name == FimIMC.title){
        validacao = false;
    }
    //            appStatus("Validacao = " + validacao)
    if(validacao == true){
        alert("Parabéns, Algoritmo resolvido com sucesso!");
    }else{
        alert("Falha!");
      }
    validador = "IMC";
    alert(validacao);
    var xx = ajaxRequest(validacao, validador);
//                appStatus("Esperado = " + o.title + " Local = " + o.name);
//                if(o.title == o.name){
//                    alert("Graças a Deus");
//                }
}

function validarNumeroPar(){
            
    //                    alert("Graças a Deus");
    var InicioPar = document.getElementById("InicioPar");
    var Condicao = document.getElementById("NumeroMod2");
    var SetaSim = document.getElementById("SetaSimPar");
    var LeiaNumero = document.getElementById("LeiaNumero");
    var ResultadoPar = document.getElementById("ResultadoPar");
    var SetaNao = document.getElementById("SetaNaoPar");
    var ResutadoImpar = document.getElementById("ResultadoImpar");
    var FimPar = document.getElementById("FimPar");
    var FimImpar = document.getElementById("FimImpar");
            
            
    var validacao = true;
            
    if(InicioPar.name != InicioPar.title ){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
    }
    if(LeiaNumero.name != LeiaNumero.title){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
                
    }
    if(Condicao.name != Condicao.title){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
    }
    if(SetaSim.name != SetaSim.title){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
    }
    if(SetaNao.name != SetaNao.title){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
    }
    if(ResultadoPar.name != ResultadoPar.title){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
    }
    if(ResutadoImpar.name != ResutadoImpar.title){
        validacao = false;
    //                appStatus(InicioPar.name + " != " + InicioPar.title);
    }
    //            if(FimPar.name != FimPar.title || FimPar.name == FimImpar.title ){
    //                validacao = false;
    //            }
    //            if(FimImpar.name != FimImpar.title || FimImpar.name == FimPar.title){
    //                validacao = false;
    //            }
    //            
    //            appStatus("Validacao = " + validacao)
    if(validacao == true){
        alert("Parabéns, Algoritmo resolvido com sucesso!");
    }else{
        alert("Falha!");
      }
    validador = "NumeroParImpar";
    var xxx  = ajaxRequest(validacao, validador);
//                appStatus("Esperado = " + o.title + " Local = " + o.name);
//                if(o.title == o.name){
//                    alert("Graças a Deus");
//                }ppStatus("Esperado = " + o.title + " Local = " + o.name);
               
}
        
       