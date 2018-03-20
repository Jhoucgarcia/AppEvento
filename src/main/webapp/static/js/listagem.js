$(document).ready(function() {
	$("#alert").css('display', 'none');
	aplicarListeners();
});




var aplicarListeners = function() {
	$('#exampleModal').on('hide.bs.modal', limparModal);

	var id;

	$('.btn-modalSalvar').on('click', function() {
		limparModal();
	});

	$('.btn-modalDeletar').on('click', function() {
		id = $(this).parents('tr').data('id');
		console.log(id);
	});

	$('.btn-deletar').on('click', function() {
		console.log(id);
		$.ajax({
			type : 'DELETE',
			url : 'evento/' + id,
			contentType : "application/json; charset=utf-8",
			success : function(data) {
				console.log(data);

				$('tr[data-id="' + id + '"]').remove();
				$('#modalExclusao').modal('hide');
			}

		});
	});

	$('.btn-cadastrarUsuario').on('click', function() {
		

		var formdata = new FormData($("form[name='form-cadastraUsuario']")[0]);
		console.log(formdata);

		$.ajax({

			type : 'POST',
			url : 'login/cadastrar',
			data : formdata,
			processData: false,
	        contentType: false,
	        beforeSend: function(){
	        	console.log("enviando requisição");
	        	$('#btn-cadastrarUsuario').prop( "disabled", false );
	        },
			/*success : function(data) {
				console.log(data);
				console.log()
				$('#modalCadastraUsuario').modal('hide');
				
				$('<div>', {
				    id: 'minhaDiv',
				    class: 'alert alert-success alert-dismissible fade show',
				    'role': 'alert',
				    html: 'Usuário cadastrado com sucesso!'
				}).prependTo('body');

				limparModal();
			},
			fail: function(){
				console.log(data);
				console.log("falha");
				$('<div>', {
				    id: 'minhaDiv',
				    class: 'alert alert-erro alert-dismissible fade show',
				    'role': 'alert',
				    html: '<strong>Erro -</strong> Usuário não cadastrado!'
				}).prependTo('body');
				
				limparModal();
			}*/
	        statusCode:{
	        	200: function(retorno){
	        		console.log(retorno);
					$('#modalCadastraUsuario').modal('hide');
					
					$('<div>', {
					    id: 'minhaDiv',
					    class: 'alert alert-success alert-dismissible fade show',
					    'role': 'alert',
					    html: 'Usuário cadastrado com sucesso!'
					}).prependTo('body');
					
					$('<button>',{
	        			type: 'button',
	        			class: 'close',
	        			'data-dismiss': 'alert',
	        			'aria-label': 'Close',
	        			html:' <span aria-hidden="true">&times;</span>'
	        		}).appendTo('#minhaDiv');

					limparModal();
	        	},
	        	400: function(retorno){
	        		console.log(retorno.responseText);
	        
					$('#modalCadastraUsuario').modal('hide');

	        		$('<div>', {
					    id: 'minhaDiv',
					    class: 'alert alert-danger alert-dismissible fade show',
					    'role': 'alert',
					    html: '<strong>Erro -</strong> ' + retorno.responseText
					}).prependTo('body');
	        		
	        		$('<button>',{
	        			type: 'button',
	        			class: 'close',
	        			'data-dismiss': 'alert',
	        			'aria-label': 'Close',
	        			html:' <span aria-hidden="true">&times;</span>'
	        		}).appendTo('#minhaDiv');

	        		limparModal();
	        	}
	        }
	        

		});

	});

	$('.btn-modalEditar').on('click', function() {
		id = $(this).parents('tr').data('id');
		var url = "evento/" + id;
		$.get(url).done(function(evento) {

			$('#codigo').val(evento.codigo);
			$('#nome').val(evento.nome);
			console.log(evento.data);
			$('#data').val(evento.data);
			$('#horario').val(evento.horario);
			$('#local').val(evento.local);
			$('#exampleModal').modal('show');
		});

	});

	var limparModal = function() {
		$('#codigo').val('0');
		$('#nome').val('');
		$('#data').val('');
		$('#horario').val('');
		$('#local').val('');
		$('#login').val('');
		$('#nomeCompleto').val('');
		$('#senha').val('');
	};

}
