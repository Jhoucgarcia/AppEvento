<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE script PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="static/css/loginpage.css" />


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



</head>

<body>

			
	
	
	
		<div class="card card-container col-md-4" >
			<!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->

			<p id="profile-name" class="profile-name-card"></p>
			<form class="form-signin" method="POST" action="/login">
				<span id="reauth-email" class="reauth-email"></span> <input type="text" id="username" name="username" class="form-control" placeholder="username" required autofocus> <input type="password"
					id="password" name="password" class="form-control" placeholder="Password" required>

				<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" value="Login">Logar</button>
			</form>
			<!-- /form -->
			<div class="row">
				<button type="button" data-toggle="modal" data-target="#modalCadastraUsuario" class="col-md-12 btn btn-info text-center">Cadastrar</button>
			</div>

		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->
	<jsp:include page="modal.jsp" />


	<script src="${pageContext.request.contextPath}/static/js/listagem.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
