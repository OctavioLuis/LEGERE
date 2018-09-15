<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/" var="urlRoot" />
<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${urlRoot}alumno/alumno">Inicio</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">  
            <li><a href="${urlRoot}alumno/reportes">Reportes</a></li>
            <li><a href="${urlRoot}docenviado/lista">Perfil</a></li>             
            <li><a href="${urlRoot}alumno/bibioteca">Biblioteca</a></li>
            <li><a href="${urlRoot}dependencia/lista">Agenda</a></li>            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
</nav>