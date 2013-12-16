<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title>Autenticaci&oacuten</title>
</head>

<body>
	<h1>Iniciar Sesi&oacuten</h1> <br/>
	<form name="autentication" action="authenticate">
	
		Nombre <input type="text" name="nombre"/><br/>
		Contrase&ntildea <input type="password" name="password"/><br/>
		<br/>
		<br/>
		<input type="submit" name="login" value="Entrar" />
	</form>
</body>
</html>