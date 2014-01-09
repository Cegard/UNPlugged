<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<style type="text/css">
body {
	background-image: url(../images/tire.png);
	background-repeat:repeat-y;
	padding-left: 0.3cm;
}
body,td,th {
	font-size: 14px;
	color: #FFF;
}
a:link {
	color: #666;
}
</style>
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.button.min.css" rel="stylesheet" type="text/css">
<script src="jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="jQueryAssets/jquery-ui-1.9.2.button.custom.min.js" type="text/javascript"></script>
</head>

<body>

   <p style="background-image:url(../images/table.png);background-repeat:no-repeat;color: #FFF; font-size: 14px;"><strong>.Inicio</strong></p>
    <form name="autentication" action="authenticate">
        <input size="15" id="nombre" type="text" required="required" name="nombre" placeholder="Usuario"/> <br/>
        <input size="15" id="pass" type="password" required="required" name="password" placeholder='Contraseña' /> <br/>
	<br/>
	<input style="background: -webkit-gradient(linear,left top,left bottom,from(#66B3B6),to(#375A87));
background: -moz-linear-gradient(top,#8266b6,#533787);
background: -o-linear-gradient(top,#8266b6,#533787);
background: linear-gradient(top,#8266b6,#533787);
border-top: 1px solid #5b3f8f;
border-left: 1px solid #412771;
border-right: 1px solid #412771;
border-bottom: 1px solid #2a1453;
box-shadow: inset 0 1px 0 rgba(255,255,255,0.1),0 1px 0 rgba(0,0,0,0.15);
-moz-box-shadow: inset 0 1px 0 rgba(255,255,255,0.1),0 1px 0 rgba(0,0,0,0.15);
-webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,0.1),0 1px 0 rgba(0,0,0,0.15);
color: #fff;" type="submit" name="login" value="Entrar" />
    </form>
</body>
</html>
