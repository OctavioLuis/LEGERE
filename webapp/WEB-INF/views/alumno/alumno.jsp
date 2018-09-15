<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Inicio</title>

<spring:url value="/resources" var="urlPublic"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>


<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>
	<!-- Fixed navbar -->
	<jsp:include page="../includes/menu.jsp"></jsp:include>

	<div class="container theme-showcase" role="main">
		<hr class="featurette-divider">
		<form class="form-signin" action="#" method="post">
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="titulo">Título del libro</label> <input type="text"
							id="titulo" name="titulo" class="form-control" required autofocus>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="bibliografia">Bibliografia del autor</label>
						<textarea class="form-control" rows="5" name="bibliografia"
							id="bibliografia" required autofocus></textarea>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="resumen">Resumen</label>
						<textarea class="form-control" rows="5" name="resumen"
							id="resumen" required autofocus></textarea>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="opinion">Opinión Personal</label>
						<textarea class="form-control" rows="5" name="opinio" id="opinion"
							required autofocus></textarea>
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-success">Guardar y
				enviar despues</button>			
		</form>
		<button type="submit" class="btn btn-danger">Enviar</button>
		<!-- 	</div> -->

		<!-- FOOTER -->
		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</body>
</html>