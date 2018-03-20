

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Salvar evento</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="/evento" method="post">

					<div class="form-group">
						<input type="hidden" name="codigo" id="codigo" value="0"> <label for="nome">Nome:</label> <input type="text" class="form-control" name="nome" id="nome"> <label for="local">Local:</label>
						<input type="text" class="form-control" name="local" id="local"> <label for="data">Data:</label> <input type="date" class="form-control" name="data" id="data"> <label
							for="horario">Horário:</label> <input type="time" class="form-control" name="horario" id="horario">
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
							<button type="submit" class="btn btn-primary btn-cadastrar">Salvar</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>








<div class="modal fade" id="modalCadastraUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Novo usuário</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form  method="POST" action="/login/cadastrar" class="form-cadastraUsuario" id="form-cadastraUsuario" name="form-cadastraUsuario">

					<div class="form-group">
						<label for="nome">Nome Completo:</label> <input type="text" class="form-control" name="nomeCompleto" id="nomeCompleto">
						<label for="login">Login:</label> <input type="text" class="form-control" name="login" id="login"> 
						<label for="password">Senha:</label> <input type="password" class="form-control" name="senha" id="senha">
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
							<button type="button" class="btn btn-primary btn-cadastrarUsuario">Salvar</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>




