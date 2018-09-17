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
		<form:form action="${urlForm}" method="post" modelAttribute="reporte">
		<div class="row">

			<div class="form-group">
				<div class="col-sm-16">
<%-- 					<form action="${urlRoot}pdf/searchByFolio" method="post"> --%>
						<div class="form-group">
							<label for="folio">Nombre del alumno: Mónica Evelyn Mendoza Fernández   </label>
							<label for="folio">Licenciatura: Informática    </label>
							<label for="folio">Semestre: 10 </label>														
						</div>
<!-- 						<button type="submit" class="btn btn-primary">Buscar</button> -->
<%-- 					</form> --%>
				</div>
			</div>

		</div>
		
		
		<div class="table-responsive">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>Categorías</th>
					<th>Descripción de las categorías</th>
					<th>Reporte del alumno</th>
					<th>Calificación</th>

				</tr>

				<tr>
						<td>Estructura de los apartados</td>
						<td>1. Título del libro, <br>
						2. Datos biográficos del autor, <br>
						3. Resumen, <br>
						4. Opinión</td>
						<td></td>
						<td>
							<div class="form-group">
							<select
								id="calif" name="calif" class="form-control">
								<option value="1">Nulo 0</option>
								<option value="2">Deficiente 5</option>
								<option value="3">Suficiente 6</option>
								<option value="4">Bien 8</option>
								<option value="5">Excelente 10</option>																								
							</select>
							</div>
						</td>
				</tr>
				
				<tr>
						<td>Datos biográficos del autor</td>
						<td>Se pone el nombre del autor, fecha y lugar<br>
						de nacimiento,nacionalidad, algunas situaciones <br>
						relevantes de la vida del autor, premios o reconocimientos<br>
						al escritor o datos relevantes de la época histórica <br>
						en que fue escrito. Se escribe en 100 palabras.</td>
						<td>-----</td>
						<td>
							<div class="form-group">
							<select
								id="calif" name="calif" class="form-control">
								<option value="1">Nulo 0</option>
								<option value="2">Deficiente 5</option>
								<option value="3">Suficiente 6</option>
								<option value="4">Bien 8</option>
								<option value="5">Excelente 10</option>																								
							</select>
							</div>
						</td>
				</tr>
				
				<tr>
						<td>Resumen</td>
						<td>Aporta información de los eventos en <br>
						el tiempo o hechos más relevantes, describe <br>
						a los personajes y lugares. Además contextualiza. <br>
						Debe contar con una extensión de 600 palabras.</td>
						<td></td>
						<td>
							<div class="form-group">
							<select
								id="calif" name="calif" class="form-control">
								<option value="1">Nulo 0</option>
								<option value="2">Deficiente 5</option>
								<option value="3">Suficiente 6</option>
								<option value="4">Bien 8</option>
								<option value="5">Excelente 10</option>																								
							</select>
							</div>
						</td>
				</tr>
				
				<tr>
						<td>Opinión personal</td>
						<td>Da un juicio que valora los acontecimientos <br>
						de la historia, el uso del lenguaje del mismo. <br>
						O Comenta la relevancia o impacto en su vida que<br>
						 le generó la obra literaria. Esta sección debe <br>
						contar con la extensión de 200 palabras  </td>
						<td></td>
						<td>
							<div class="form-group">
							<select
								id="calif" name="calif" class="form-control">
								<option value="1">Nulo 0</option>
								<option value="2">Deficiente 5</option>
								<option value="3">Suficiente 6</option>
								<option value="4">Bien 8</option>
								<option value="5">Excelente 10</option>																								
							</select>
							</div>
						</td>
				</tr>
				
				<tr>
						<td>Cohesión, Coherencia y Ortografía</td>
						<td>Las ideas particulares están redactadas<br>
						de manera clara, precisa, lógica, de modo <br>
						que hay una progresión de las ideas <br>
						que llegan a presentar una unidad global, <br>
						con un texto unido. Además aplica el adecuado <br>
						uso de los signos de puntuación. Evita vicios <br>
						del lenguaje como repetir palabras, pleonasmos, <br>
						silepsis, anacolutos, anantapódoton, cacofonías, <br>
						etc.  Aplicación  de  las normas ortográficas.</td>
						<td>-----</td>
						<td>
							<div class="form-group">
							<select
								id="calif" name="calif" class="form-control">
								<option value="1">Nulo 0</option>
								<option value="2">Deficiente 5</option>
								<option value="3">Suficiente 6</option>
								<option value="4">Bien 8</option>
								<option value="5">Excelente 10</option>																								
							</select>
							</div>
						</td>
				</tr>
				
			</table>
			
			<div class="page-header">
			<label>Observaciones:</label>
			<textarea class="form-control" rows="0" name="observaciones"
							id="observaciones" required="required" >
							</textarea>	
				<h2>Calificación final: </h2>
			</div>
			
		</div>

		<button type="submit" class="btn btn-danger" name="botom" value="2">Enviar</button>			
		</form:form>

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