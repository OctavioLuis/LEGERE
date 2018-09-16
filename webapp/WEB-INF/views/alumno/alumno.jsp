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
<spring:url value="/alumno/guardarEnviarDespues" var="urlForm"></spring:url>
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
		<c:if test="${msg!=null }">
			<div class='alert alert-success' role="alert">${ msg }</div>
		</c:if>
		<spring:hasBindErrors name="reporte">
			<div class='alert alert-danger' role='alert'>
				Por favor corrija los siguientes errores:
				<ul>
					<c:forEach var="error" items="${errors.allErrors}">
						<li><spring:message message="${error}" /></li>
					</c:forEach>
				</ul>
			</div>
		</spring:hasBindErrors>
		
		<form:form action="${urlForm}" method="post"
			 modelAttribute="reporte">
			
		<div class="row">
			<div class="col-sm-12">
				<div class="form-group">
					<div class="col-sm-3">
						<div class="form-group">
							<label for="genero" class="control-label">Parcial</label> 
							<select
								id="nParcial" name="nParcial" class="form-control">
								<option value="1">primer parcial</option>
								<option value="2">Segundo parcial</option>
								<option value="3">Tercer parcial</option>								
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="titulo">Título del libro</label> 
						<form:hidden path="idReporte" />
						<form:input type="text" id="titulo" path="titulo" class="form-control" required="required" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="biografia">Biografia del autor</label>
						<form:textarea class="form-control" rows="5" path="biografia"
							id="biografia" required="required" />
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="resumen">Resumen</label>
						<form:textarea class="form-control" rows="10" path="resumen"
							id="resumen" required="required" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label for="opinion">Opinión Personal</label>
						<form:textarea class="form-control" rows="5" path="opinion" id="opinion"
							required="required" />
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-success" name="botom" value="1">Guardar y enviar despues</button>
			<button type="submit" class="btn btn-danger" name="botom" value="2">Enviar</button>			
		</form:form>
<!-- 		<button type="submit" class="btn btn-danger">Enviar</button> -->
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