<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Bienvenido</title>
</head>
<body>
  <div class="body">
	
	<%-- if(!flash.toStream.isEmpty()) { %>
		<p> <h2> iniciar Streaming de </h2> </p>
		<% flash.toStream.each{ %>
			
		<% } %> 
	<% }  --%>
	
	<% if(!flash.toSee.isEmpty()) { %>
		<p> <h2> Transmiciones en vivo </h2> </p>
		<% flash.toSee.each{ %>
			<p> <a href="procesarSolicitud?v_id=${it.id}" rel="next"> ${it.titulo} </a> </p>
		<% } %> 
	<% }  %>
	
    <% flash.videos.each{ %>
		<p> <a href="procesarSolicitud?v_id=${it.id}" rel="next"> ${it.titulo} </a> </p>
    <% } %>
    
  </div>
</body>
</html>