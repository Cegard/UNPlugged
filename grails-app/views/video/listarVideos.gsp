<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Bienvenido</title>
</head>
<body>
  <div class="body">

    <% flash.videos.each{ %>
		<p> <a href="cargarVideo?v_id=${it.id}" rel="next"> ${it.titulo} </a> </p>
    <% } %>
    
  </div>
</body>
</html>