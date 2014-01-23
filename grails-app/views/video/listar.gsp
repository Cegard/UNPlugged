<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="layout1"/>
<title>Bienvenido</title>
</head>
<body>

    <div id="centro" align="center">
	
	<% if(!toStream.isEmpty()) { %>
		<p> <h2> Iniciar Streaming de </h2> </p>
		<% toStream.each{ %>
			<p> <a href="iniciarStreaming?ce_id=${it.id}" rel="next"> ${it.nombre} </a> </p>
		<% } %> 
	<% } %>
	
	<% if(!toSee.isEmpty()) { %>
		<p> <h2> Transmisiones en vivo </h2> </p>
		<% toSee.each{ %>
			<p> <a href="procesarSolicitud?v_id=${it.id}" rel="next"> ${it.titulo} </a> </p>
	    <% } %>
	<% }  %>
	
	<p> <h2> Videoteca </h2> </p>
    <% videos.each{ %>
		<p> <a href="procesarSolicitud?v_id=${it.id}" rel="next"> ${it.titulo} </a> </p>
    <% } %>
    
  </div>
</body>
</html>