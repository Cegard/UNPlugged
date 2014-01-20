<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title><% out << "${flash.tittle }" %></title>

<% def comentar() {
	coment.video = Video.findById(flash.vID)
	coment.usuario = session.actual
	coment.fecha = new Date()
	coment.contenido = params.comentario
	
	coment.save() // ?
}%>
</head>
<body>
  
  <h1> <% out << "${flash.tittle }" %> </h1>
  
  <div class="body">
	<object width='640' height='377' id='SampleMediaPlayback' name='SampleMediaPlayback' type='application/x-shockwave-flash' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' >
	  <param name='movie' value='http://localhost/swfs/SampleMediaPlayback.swf' /> 
	  <param name='quality' value='high' /> <param name='bgcolor' value='#000000' /> 
	  <param name='allowfullscreen' value='true' /> 
	  <param name='flashvars' value= '&src=rtmp://${flash.path}&autoHideControlBar=true&streamType=recorded&autoPlay=true&verbose=true'/>
	  <embed src='http://localhost/swfs/SampleMediaPlayback.swf' width='640' height='377' id='SampleMediaPlayback' quality='high' bgcolor='#000000' name='SampleMediaPlayback' allowfullscreen='true' pluginspage='http://www.adobe.com/go/getflashplayer' flashvars='&src=rtmp://${flash.path }&autoHideControlBar=true&streamType=recorded&autoPlay=true&verbose=true' type='application/x-shockwave-flash'> 
	  </embed>
	</object>
  </div>
    Deja un Comentario <br/>
<<<<<<< HEAD
    <input type="text" name="comentario" /> <br/>
    <input type="button" name="buttonComent" value="enviar" onclick="comentar()" /> <br />
    <input type="hidden" name="vidID" value="${flash.vID}" />
=======
    <input type="text" name="comentar">
>>>>>>> c5f691a41b35fd134ae8d3501c176f22ca6cca8c
  <div>
  <%--se mostraran los comentarios de manera dinámica --%>
  </div>
</body>
</html>