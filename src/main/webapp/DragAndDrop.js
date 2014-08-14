var largou = false;
/*função que serve para exibir as mensagens na div que ele está sobre ela*/

	function appStatus(msg){
		document.getElementById('app_status').innerHTML = msg;
	}

	/*função que será ativada ao arrastar o objeto*/
	function drag_start(e){
		appStatus("arrastando o objeto " +e.target.getAttribute('id'));
		e.dataTransfer.dropEffect='move'; /*aplica o efeito de estar movendo*/
		e.dataTransfer.setData("text/plain", e.target.getAttribute('id'));
	}

	function drag_enter(e){
		appStatus("Você esta arrastando sobre a " + e.target.getAttribute('id'));
	}

	function drag_leave(e){
		appStatus("Você deixou a "+ e.target.getAttribute('id'));
	}

	function drag_drop(e){
		var element = e.dataTransfer.getData("Text");
		appStatus("Você largou o objeto " +element+ "na " +e.target.getAttribute('id'));
		e.target.appendChild(document.getElementById(element));
		largou = true;
		
		
		/*document.getElementById(element).removeAttribute("draggable");*/
	}
	
	function drag_end(e){
		var status = document.getElementById('app_status');
		if(largou == false){ /*correto*/
		appStatus("Você deixou o objeto " +e.target.getAttribute('id')+"");
		
	}
	
}