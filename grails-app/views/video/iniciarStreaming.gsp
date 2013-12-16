<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- meta name="layout" content="main"/> -->
<title>Streaming</title>
</head>
<body>
	<h1>Streaming</h1>
	<form name="autentication" controller="VideoController">
        Titulo: <input type="text" name="titulo"/> <br>
        <%-- Fecha: <g:datePicker name="fecha" default="${new Date()}" precision="day" /> <br/> --%>
        Lugar: <g:textField name="lugar"/> <br>
        Temas relacionados: <input type="text" name="temas" /> <br/>
        Ofrecido por: <input type="text" name="ofrecidoPor" /> <br>
        <br>  
        <input type="submit" value="Iniciar transmición" action="submit"/>
	</form>
</body>
</html>