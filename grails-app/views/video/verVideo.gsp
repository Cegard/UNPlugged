<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="layout1"/>
<title><% out << "${videos.titulo }" %></title>
</head>
<body>
  
  <div id="centro" align="center">
      <h1> <strong><% out << "${videos.titulo }" %> </strong></h1>
	<object width='840' height='277' id='SampleMediaPlayback' name='SampleMediaPlayback' type='application/x-shockwave-flash' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' >
	  <param name='movie' value='http://10.203.74.189/swfs/SampleMediaPlayback.swf' /> 
	  <param name='quality' value='high' /> <param name='bgcolor' value='#000000' /> 
	  <param name='allowfullscreen' value='true' /> 
	  <param name='flashvars' value= '&src=rtmp://${flash.path}&autoHideControlBar=true&streamType=recorded&autoPlay=true&verbose=true'/>
	  <embed src='http://10.203.74.189/swfs/SampleMediaPlayback.swf' width='640' height='377' id='SampleMediaPlayback' quality='high' bgcolor='#000000' name='SampleMediaPlayback' allowfullscreen='true' pluginspage='http://www.adobe.com/go/getflashplayer' flashvars='&src=rtmp://${flash.path }&autoHideControlBar=true&streamType=recorded&autoPlay=true&verbose=true' type='application/x-shockwave-flash'> 
	  </embed>
	</object>
        <p>
        Autor: ${videos.ofrecidoPor}<br>
        Fecha: ${videos.fecha}<br>
        Lugar: ${videos.lugar}<br><br><br>
        <script type="text/javascript">
            function ClearFields() {

            document.getElementById("comentarios").value = "";
            }
            </script>

            <form action="comentar" >
            Comentarios:<br />
            <p>
            <textarea value="Escribe tu comentario" name="comentarios" style="width: 300px; height: 150px;" ></textarea> <br />
            <input class="primary_button" type="submit" value="Submit" />
            </form>
  
    

   <div id="centro" align="center">
            <p>&nbsp;</p>
                <% comentarios.each{ %>
                   
                    <div id="commment" style="width:450px;background-color:#333;text-align:left;border-style:solid;vertical-align: top;display: inline-block;color:#FFF;border: 1px solid #00cccc;">                    
                        <div style="background-image:url(../images/table.jpg) !important;background-repeat:no-repeat;color: #009999 !important; font-size: 14px;background-size: 100% auto !important; padding-left: 0.3cm;"><strong><%= "${it.usuario.nombre}" %></strong></div>
                   <%= "${it.body}" %>
                    </div>
                   
                   
                <% } %>
                 
                
                    
                   
      </div>
</div>
</body>
</html>