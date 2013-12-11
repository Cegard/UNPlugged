<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<style type="text/css">
body {
	background-color: #171C18;
}
</style>
</head>

<body>
<p>
    <img src="${resource(dir: 'images', file: 'Logo.png')}" width="497" height="100" />
	<div align="right">
		<input name="search" type="search" autocomplete="on" value="buscar">
	</div>
	<hr>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;
	<div align="center">
		<img src="${resource(dir: 'images', file: 'video.png')}" width="436" height="425" alt="Grails"/>
		<form name="actualizar" action="http://localhost:9090/UNPlugged/usuario/procesarRol" >
		<input type="submit" value="actualizar" name="bAct">
		</form>
	</div>
</p>
</body>
</html>
