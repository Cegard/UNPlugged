!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>UNPlugged - home</title>
<meta name="layout" content="layout1"/>

</head>
<body>
    <div id="centro" align="center">
            <p>&nbsp;</p>
            <p>
                ¡Video Encontrado!
                <br>
                <br>
               
                   
              <p> 
                <div class="results">
                <% videos.each{ %>
                    <p>
                            Titulo:<a href="/UNPlugged/video/procesarSolicitud?v_id=${it.id}"> <%= "${it.titulo}" %></a><br>
                    Lugar: <%= "${it.lugar}" %><br>
                    Autor: <%= "${it.ofrecidoPor}" %><br>
                    
                <% } %>
                <% %>
                </div>
                    
                   
      </div>
 </div>
</body>
</html>