<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<c:if test="${mensagemCadastroInvalido == true }">

			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>ERRO - </strong> Não foi possível cadastrar o evento.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</c:if>

		<table class="table table-stripped">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Data</th>
					<th scope="col">Horario</th>
					<th scope="col">Local</th>
					<th scope="col">Ação</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="evento" items="${eventos}">

					<tr data-id="${evento.codigo }">
						<th scope="row">${evento.codigo}</th>
						<td>${evento.nome}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy" value="${evento.data}" /></td>
						<td>${evento.horario}</td>
						<td>${evento.local}</td>
						<td><button class="btn btn-danger btn-modalDeletar" data-toggle="modal" data-target="#modalExclusao">Deletar</button>
							<button class="btn btn-secondary btn-modalEditar">Editar</button></td>

					</tr>

				</c:forEach>

			</tbody>
		</table>


		<button type="button" class="btn btn-primary btn-modalSalvar" data-toggle="modal" data-target="#exampleModal">Cadastrar evento</button>
		<a class="btn btn-info" href="logout" role="button">Deslogar</a>
		<jsp:include page="modal.jsp" />



		<div class="modal fade" id="modalExclusao" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Exclusão!</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">Deseja realmente excluir o evento?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
						<button type="button" class="btn btn-primary btn-deletar">Confirmar exclusão</button>
					</div>
				</div>
			</div>
		</div>



	</div>



	<script src="${pageContext.request.contextPath}/static/js/listagem.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>