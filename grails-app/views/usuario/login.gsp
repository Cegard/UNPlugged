<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<style type="text/css">
body {
	background-image: url(../images/tire.png);
	background-repeat:repeat-y;
}
body,td,th {
	font-size: 18px;
	color: #FFF;
}
a:link {
	color: #666;
}
</style>
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