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
		<div class="page-header">
			<h2>Alumnos asignados</h2>
		</div>
		<div class="row">

			<div class="form-group">
				<div class="col-sm-6">
					<form action="${urlRoot}pdf/searchByFolio" method="post">
						<div class="form-group">
							<label for="folio">Buscar alumno</label> <input type="text"
								class="form-control" name="folio" id="folio" required="required" />
						</div>
						<button type="submit" class="btn btn-primary">Buscar</button>
					</form>
				</div>
			</div>

		</div>
		

		<div class="table-responsive">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>Nombre del alumno</th>
					<th>Licenciatura</th>
					<th>semestre</th>
					<th>Calificación</th>
					<th>Evaluación</th>

				</tr>

				<tr>
					<c:forEach items="${reporte}" var="reportes">
						<td>${reportes.nParcial}</td>
						<td>${reportes.titulo}</td>
						<td>${reportes.calificacion}</td>
						<td>${reportes.evaluacion}</td>
						<td><a
							href="${pageContext.request.contextPath}/pdf/download/${pdf.idDucumento}">
								<img src="${urlPublic}/images/save_icon.gif" border="0"
								title="Download this document" />
						</a></td>
				</tr>

				</c:forEach>
			</table>
		</div>



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