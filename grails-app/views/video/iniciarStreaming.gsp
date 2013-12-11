<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- meta name="layout" content="main"/> -->
<title>Streaming</title>
</head>
<body>
	<h1>Streaming</h1>
	<g:form name="autentication" controller="VideoController">
        Titulo: <g:textField name="titulo"/> <br>
        <%-- Fecha: <g:datePicker name="fecha" default="${new Date()}" precision="day" /> <br/> --%>
        Lugar: <g:textField name="lugar"/> <br>
        Temas relacionados: <g:textField name="temas" /> <br/>
        Ofrecido por: <g:textField name="ofrecidoPor" /> <br>
        <br>  
        <g:actionSubmit value="Iniciar transmición" action="submit"/>
	</g:form>
</body>
</html>