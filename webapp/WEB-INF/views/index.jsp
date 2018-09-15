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
<spring:url value="/pdf/lista" var="urlDocPdf" />
<spring:url value="/docenviado/lista" var="urlDocEnviado" />
<spring:url value="/usuario/edit" var="urlDocComp" />
<spring:url value="/usuario/lista" var="urlUsuario" />
<spring:url value="/dependencia/lista" var="urlDependencia" />

<spring:url value="/pdf/lista2" var="urlListarById"></spring:url>

<spring:url value="/pdf/lista3" var="urlListarByIdUsModifica"></spring:url>

<!-- busqueda de documentos enviados -->
<spring:url value="/docenviado/lista2" var="urlListarEnviadosById"></spring:url>

<spring:url value="/docenviado/lista3"
	var="urlListarEnviadosByIdUsModifica"></spring:url>

<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>

<body>

	<!-- Fixed navbar -->
	<jsp:include page="includes/menu.jsp"></jsp:include>

	<div class="container theme-showcase" role="main">





		<hr class="featurette-divider">
<!-- 			<img src="images/login.png" width="136" height="136" class="center"> -->
			<form class="form-signin" action="j_security_check" method="post">        
				<h3 class="form-signin-heading">Reporte de lectura</h3>        
				<label for="j_username" class="sr-only">Usuario</label>
				<br><input type="text" id="j_username" name="j_username" class="form-control" placeholder="Usuario" required autofocus>
				<label for="j_password" class="sr-only">Contraseña</label>
				<br><input type="password" id="j_password" name="j_password" class="form-control" placeholder="Password" required>
				<br><button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			</form>
		</div>











		<!-- FOOTER -->
		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#fechaEstreno").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});

		$(function() {
			$("#fechaEntrada").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
		fechaRecibida
		$(function() {
			$("#fechaRecibida").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
	</script>
</body>
</html>