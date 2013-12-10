<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title>Autenticaci&oacuten</title>
</head>

<body>
	<h1>Iniciar Sesi&oacuten</h1> <br/>
	<g:form name="autentication" action="authenticate">
	
		Nombre <g:textField name="nombre"/><br/>
		Contrase&ntildea <g:passwordField name="password"/><br/>
		<g:message code="1" /> <br/>
		<br/>
		<g:submitButton name="login" value="Entrar" />
	</g:form>
</body>
</html>